import { linkSync, lstatSync, mkdirSync, readFileSync, realpathSync, renameSync, rmSync, statSync, writeFileSync } from 'node:fs';
import { basename, dirname, resolve } from 'node:path';
import { randomUUID } from 'node:crypto';
import { PeleError, render } from 'pele';
import { renderOptions } from './settings.js';

export class InputError extends Error {}
export interface PageOptions { title?: string; documentId?: string; overwrite?: boolean }

export function renderFile(input: string, output: string, options: PageOptions = {}): void {
  const sourcePath = realpathSync(input);
  const destination = resolve(output);
  let existing;
  try { existing = lstatSync(destination); }
  catch (error) { if ((error as NodeJS.ErrnoException).code !== 'ENOENT') throw error; }
  if (existing?.isSymbolicLink()) throw new InputError('Output must not be a symlink');
  if (sourcePath === destination || (existing && sourcePath === realpathSync(destination))) {
    throw new InputError('Output must not replace the source');
  }
  if (existing && !options.overwrite) throw new InputError('Output exists; use a new revision or --overwrite');
  const stat = statSync(sourcePath);
  if (!stat.isFile() || stat.size > renderOptions.limit * 4) throw new InputError('Source must be a bounded text file');
  let source: string;
  try { source = new TextDecoder('utf-8', { fatal: true }).decode(readFileSync(sourcePath)); }
  catch { throw new InputError('Source must be UTF-8 text'); }
  render(source, renderOptions);
  const title = options.title ?? 'Architecture canvas';
  const documentId = options.documentId ?? basename(input, '.mmd');
  if (!documentId || documentId.length > 128 || title.length > 300) throw new InputError('Title or document ID is invalid');
  const payload = JSON.stringify({ source, title, documentId, peleVersion: '1.7.0' })
    .replaceAll('&', '\\u0026').replaceAll('<', '\\u003c').replaceAll('>', '\\u003e');
  const bundle = readFileSync(new URL('../dist/canvas.js', import.meta.url)).toString('base64');
  const template = readFileSync(new URL('../assets/canvas.html', import.meta.url), 'utf8');
  const html = template.replace('__CLIENT_URL__', `data:text/javascript;base64,${bundle}`)
    .replace('__MODEL_JSON__', () => payload);
  mkdirSync(dirname(destination), { recursive: true, mode: 0o700 });
  const temporary = `${destination}.${randomUUID()}.tmp`;
  try {
    writeFileSync(temporary, html, { flag: 'wx', mode: 0o600 });
    if (options.overwrite) renameSync(temporary, destination);
    else linkSync(temporary, destination); // Exclusive publication: never race-overwrite another revision.
  } finally { rmSync(temporary, { force: true }); }
}

export function publicError(error: unknown): string {
  if (error instanceof InputError) return error.message;
  if (error instanceof PeleError) return `Mermaid could not be rendered (${error.code})`;
  return 'Invalid arguments or file operation failed; check paths, permissions and setup';
}
