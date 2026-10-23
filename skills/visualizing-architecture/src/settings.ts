// Keep host-controlled safety options identical in the CLI and browser.
export const renderOptions = {
  links: false,
  images: false,
  limit: 20_000,
  outputLimit: 1_000_000,
  maxEdges: 200,
  fontFamily: 'system-ui, sans-serif',
  fontSize: 16,
} as const;
