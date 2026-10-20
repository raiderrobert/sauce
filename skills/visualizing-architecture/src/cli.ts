#!/usr/bin/env node
import { parseArgs } from 'node:util';
import { renderFile, publicError, InputError } from './render.js';

try {
  const { values, positionals } = parseArgs({
    allowPositionals: true,
    options: {
      output: { type: 'string' }, title: { type: 'string' },
      'document-id': { type: 'string' }, overwrite: { type: 'boolean' },
      help: { type: 'boolean', short: 'h' },
    },
  });
  if (values.help) {
    console.log('visualize-architecture SOURCE.mmd --output SCREEN.html [--title TITLE] [--document-id ID] [--overwrite]');
  } else {
    if (positionals.length !== 1 || !values.output) throw new InputError('Supply one Mermaid file and --output');
    renderFile(positionals[0], values.output, { title: values.title, documentId: values['document-id'], overwrite: values.overwrite });
    console.log(JSON.stringify({ event: 'architecture_rendered', output: values.output }));
  }
} catch (error) {
  console.error(JSON.stringify({ event: 'architecture_render_failed', message: publicError(error) }));
  process.exitCode = 1;
}
