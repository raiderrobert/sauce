import { test, expect } from '@playwright/test';
import { mkdtempSync, readFileSync, rmSync, writeFileSync } from 'node:fs';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { pathToFileURL } from 'node:url';
import { renderFile } from '../src/render.js';

const source = 'flowchart LR\n A["Browser · existing"] --> B["API · proposed"]\n';
const temporary: string[] = [];
function fixture(text = source) {
  const dir = mkdtempSync(join(tmpdir(), 'architecture-browser-'));
  temporary.push(dir);
  const input = join(dir, 'diagram.mmd');
  const output = join(dir, 'diagram.html');
  writeFileSync(input, text);
  renderFile(input, output, { documentId: 'browser-test' });
  return { input, output, url: pathToFileURL(output).href };
}
test.afterEach(() => temporary.splice(0).forEach(dir => rmSync(dir, { recursive: true, force: true })));

test('edit, render, download, recover drafts and reject stale SVG export', async ({ page }) => {
  const f = fixture(source + '%% </script><script>window.INJECTED=true</script>\n');
  const errors: string[] = [];
  const remote: string[] = [];
  page.on('pageerror', error => errors.push(error.message));
  page.on('request', request => { if (/^https?:/.test(request.url())) remote.push(request.url()); });
  await page.goto(f.url);
  await expect(page.locator('#diagram svg[aria-roledescription]')).toBeVisible();
  await expect(page.locator('#diagram')).toContainText('Browser');
  expect(await page.evaluate(() => 'INJECTED' in window)).toBe(false);
  const draft = 'flowchart TB\n A["My draft"] --> B["Ready"]\n';
  await page.locator('#source').fill(draft);
  await expect(page.getByRole('button', { name: 'Download SVG', exact: true })).toBeDisabled();
  await page.setViewportSize({ width: 1000, height: 900 });
  await page.evaluate(() => new Promise(resolve => requestAnimationFrame(() => requestAnimationFrame(resolve))));
  await expect(page.getByRole('button', { name: 'Download SVG', exact: true })).toBeDisabled();
  await page.getByRole('button', { name: 'Render preview' }).click();
  await expect(page.locator('#diagram')).toContainText('My draft');
  const downloaded = page.waitForEvent('download');
  await page.getByRole('button', { name: 'Download Mermaid' }).click();
  const saved = await (await downloaded).path();
  expect(readFileSync(saved!, 'utf8')).toBe(draft);
  expect(readFileSync(f.input, 'utf8')).toContain('Browser');
  await page.reload();
  await expect(page.locator('#source')).toHaveValue(draft);
  writeFileSync(f.input, 'flowchart LR\n A["Incoming revision"] --> B["New"]\n');
  renderFile(f.input, f.output, { documentId: 'browser-test', overwrite: true });
  await page.reload();
  await expect(page.locator('#source')).toHaveValue(draft);
  await expect(page.locator('#draft-status')).toContainText('newer');
  await page.locator('#source').fill('not mermaid');
  await page.getByRole('button', { name: 'Render preview' }).click();
  await expect(page.locator('#render-status')).toContainText('Invalid Mermaid');
  await expect(page.getByRole('button', { name: 'Download SVG', exact: true })).toBeDisabled();
  page.on('dialog', dialog => dialog.accept());
  await page.getByRole('button', { name: 'Load supplied source' }).click();
  await expect(page.locator('#diagram')).toContainText('Incoming revision');
  await page.setViewportSize({ width: 700, height: 900 });
  expect(await page.evaluate(() => document.body.scrollWidth <= innerWidth)).toBe(true);
  expect(errors).toEqual([]);
  expect(remote).toEqual([]);
});

test('external links and images cannot navigate or fetch', async ({ page }) => {
  const f = fixture(source + 'click A "https://example.com/private"\n I@{ img: "https://example.com/pixel.png", label: "External image" }\n');
  const remote: string[] = [];
  page.on('request', request => { if (/^https?:/.test(request.url())) remote.push(request.url()); });
  await page.goto(f.url);
  await expect(page.locator('#diagram svg[aria-roledescription]')).toBeVisible();
  await expect(page.locator('#diagram a[href]')).toHaveCount(0);
  await expect(page.locator('#diagram image')).toHaveCount(0);
  expect(remote).toEqual([]);
});
