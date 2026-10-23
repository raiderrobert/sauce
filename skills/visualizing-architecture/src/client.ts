import { mount, type Mounted } from 'pele';
import { renderOptions } from './settings.js';

interface DiagramData { source: string; title: string; documentId: string; peleVersion: string }
interface Draft { base: string; source: string }
function element<T extends HTMLElement>(id: string): T {
  const found = document.getElementById(id);
  if (!found) throw new Error(`Missing canvas element: ${id}`);
  return found as T;
}
const data: DiagramData = JSON.parse(element('architecture-data').textContent ?? '{}');
const editor = element<HTMLTextAreaElement>('source');
const diagramElement = element('diagram');
const renderStatus = element('render-status');
const draftStatus = element('draft-status');
const svgButton = element<HTMLButtonElement>('download-svg');
const key = `architecture-draft:${data.documentId}`;
let base = data.source;
let storageAvailable = true;
let diagram: Mounted | undefined;
let lastSvg = '';
let renderedSource = '';
document.title = data.title;
element('title').textContent = data.title;
element('engine').textContent = `Mermaid source · Pele ${data.peleVersion}`;
editor.value = data.source;
editor.maxLength = renderOptions.limit;
try {
  const saved: unknown = JSON.parse(sessionStorage.getItem(key) ?? 'null');
  if (saved && typeof saved === 'object' && 'base' in saved && 'source' in saved &&
      typeof saved.base === 'string' && typeof saved.source === 'string' &&
      saved.source.length <= renderOptions.limit && saved.source !== saved.base) {
    base = saved.base;
    editor.value = saved.source;
  }
} catch { storageAvailable = false; }
function updateDraftNotice(): void {
  if (!storageAvailable) draftStatus.textContent = 'Draft storage unavailable. Download Mermaid before refreshing.';
  else if (base !== data.source && editor.value !== data.source) draftStatus.textContent = 'A newer supplied source is available. Your browser draft is preserved; download it or choose Load supplied source.';
  else if (editor.value !== data.source) draftStatus.textContent = 'Browser draft restored or edited. Download Mermaid to save it; the source file is unchanged.';
  else draftStatus.textContent = 'Editing here does not change the source file. Download Mermaid to save your changes.';
}
function persistDraft(): void {
  const draft: Draft = { base, source: editor.value };
  try {
    if (editor.value === data.source) { base = data.source; sessionStorage.removeItem(key); }
    else sessionStorage.setItem(key, JSON.stringify(draft));
  } catch { storageAvailable = false; }
  updateDraftNotice();
}
function preview(): void {
  const source = editor.value;
  const options = {
    ...renderOptions,
    zoom: true,
    onRender(result: { svg: string }): void {
      lastSvg = result.svg;
      renderedSource = source;
      renderStatus.textContent = editor.value === source
        ? 'Preview rendered locally with Pele.'
        : 'Source changed. Render preview to see this revision.';
      svgButton.disabled = editor.value !== source;
    },
    onError(error: unknown): void {
      // Pele errors can contain source. Text only, never HTML or console logging.
      renderStatus.textContent = `Invalid Mermaid. Any previous diagram is stale. ${error instanceof Error ? error.message : 'Unable to render.'}`;
      svgButton.disabled = true;
    },
  };
  if (diagram) diagram.update(source, options);
  else diagram = mount(diagramElement, source, options);
}
function download(contents: string, type: string, extension: string): void {
  const url = URL.createObjectURL(new Blob([contents], { type }));
  const link = document.createElement('a');
  link.href = url;
  link.download = `architecture.${extension}`;
  link.click();
  setTimeout(() => URL.revokeObjectURL(url), 1000);
}
editor.addEventListener('input', () => {
  persistDraft();
  svgButton.disabled = editor.value !== renderedSource || Boolean(diagram?.error);
  renderStatus.textContent = 'Source changed. Render preview to see this revision.';
});
editor.addEventListener('keydown', event => {
  if (event.key === 'Enter' && (event.ctrlKey || event.metaKey)) { event.preventDefault(); preview(); }
});
element('render').addEventListener('click', preview);
element('download-mermaid').addEventListener('click', () => download(editor.value, 'text/plain;charset=utf-8', 'mmd'));
svgButton.addEventListener('click', () => {
  if (!svgButton.disabled) download(lastSvg, 'image/svg+xml;charset=utf-8', 'svg');
});
element('reset').addEventListener('click', () => {
  if (editor.value !== data.source && !confirm('Discard the browser draft and load the supplied source?')) return;
  editor.value = data.source;
  base = data.source;
  persistDraft();
  preview();
});
window.addEventListener('beforeunload', event => {
  if (!storageAvailable && editor.value !== data.source) { event.preventDefault(); event.returnValue = ''; }
});
updateDraftNotice();
preview();
