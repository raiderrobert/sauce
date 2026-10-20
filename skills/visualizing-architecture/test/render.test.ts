import { afterEach, expect, test } from 'vitest';
import { mkdtempSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const cli = fileURLToPath(new URL('../dist/cli.mjs', import.meta.url));
const temporary: string[] = [];
const source = 'flowchart LR\n A["Browser · existing"] --> B["API · proposed"]\n';
function fixture(text = source) {
  const dir = mkdtempSync(join(tmpdir(), 'architecture-test-'));
  temporary.push(dir);
  const input = join(dir, 'diagram.mmd');
  const output = join(dir, 'diagram.html');
  writeFileSync(input, text);
  return { dir, input, output };
}
function run(input: string, output: string, ...extra: string[]) {
  return spawnSync(process.execPath, [cli, input, '--output', output, '--document-id', 'test', ...extra], { encoding: 'utf8' });
}
afterEach(() => temporary.splice(0).forEach(dir => rmSync(dir, { recursive: true, force: true })));

test('renders a self-contained page from preserved Mermaid source', () => {
  const f = fixture();
  const result = run(f.input, f.output);
  expect(result.status, result.stderr).toBe(0);
  expect(JSON.parse(result.stdout).event).toBe('architecture_rendered');
  const html = readFileSync(f.output, 'utf8');
  const embedded = html.match(/<script type="application\/json" id="architecture-data">(.*?)<\/script>/s)?.[1];
  expect(embedded).toBeDefined();
  expect(JSON.parse(embedded!).source).toBe(source);
  expect(html).toContain('data:text/javascript;base64,');
  expect(html).not.toContain('cdn.jsdelivr.net');
  expect(readFileSync(f.input, 'utf8')).toBe(source);
});

test('diagram text cannot terminate the data script', () => {
  const text = source + '%% </script><script>window.INJECTED=true</script>\n';
  const f = fixture(text);
  expect(run(f.input, f.output).status).toBe(0);
  const html = readFileSync(f.output, 'utf8');
  expect(html).not.toContain('</script><script>window.INJECTED');
  const embedded = html.match(/id="architecture-data">(.*?)<\/script>/s)?.[1];
  expect(JSON.parse(embedded!).source).toBe(text);
});

test.each(['not a diagram', 'flowchart LR\n A[unfinished', source + 'x'.repeat(20001)])('rejects invalid/oversized source without publishing or leaking it', text => {
  const f = fixture(text);
  const result = run(f.input, f.output);
  expect(result.status).not.toBe(0);
  expect(JSON.parse(result.stderr).event).toBe('architecture_render_failed');
  expect(result.stderr).not.toContain(text);
  expect(() => readFileSync(f.output)).toThrow();
});

test('requires explicit overwrite and never replaces input', () => {
  const f = fixture();
  writeFileSync(f.output, 'keep');
  expect(run(f.input, f.output).status).not.toBe(0);
  expect(readFileSync(f.output, 'utf8')).toBe('keep');
  expect(run(f.input, f.output, '--overwrite').status).toBe(0);
  expect(run(f.input, f.input, '--overwrite').status).not.toBe(0);
  expect(readFileSync(f.input, 'utf8')).toBe(source);
});

test('packaged Mermaid example renders', () => {
  const f = fixture(readFileSync(new URL('../examples/service-map.mmd', import.meta.url), 'utf8'));
  const result = run(f.input, f.output);
  expect(result.status, result.stderr).toBe(0);
});
