# Valentine POC

A simple static Valentine-themed web page with photos and background music.

## Project Structure

- `index.html`: Main webpage.
- `photos/`: Image assets and `photos.json` manifest.
- `audio/`: Audio assets.
- `scripts/`: Utility scripts (including photo manifest generation).
- `site.zip`: Packaged site archive.

## Run Locally

1. Open `index.html` directly in a browser, or
2. Serve the folder with a local static server.

Example:

```bash
python3 -m http.server 8000
```

Then visit `http://localhost:8000`.

## Deploy

This is a static site, so it can be deployed to any static hosting provider (for example GitHub Pages, Netlify, or Vercel static hosting).
