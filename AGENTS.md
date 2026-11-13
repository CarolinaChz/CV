# AGENTS.md

## Overview
Static single-page CV (Spanish content) with no build system, dependencies, or tests. Verification is opening `index.html` in a browser and checking the page plus the DevTools console.

## Critical: the three "files" are actually directories
`index.html`, `css_styles.css`, and `js_interactions.js` are directories, each holding one extensionless file with the real content:

- `index.html/!-- Aquí aparece tu CV de la sesión` — HTML
- `css_styles.css/Tus estilos van aquí` — CSS
- `js_interactions.js/js` — JavaScript

Read and edit those inner paths. Reading the outer path only lists the inner entry (it looks like a one-line file). Do not create regular files with the outer names, and quote paths in shell commands because of spaces and accents.

## Known broken references
The page loads unstyled and mostly unscripted as-is:

- HTML requests `css/styles.css` and `js/interactions.js`; neither exists (see actual paths above).
- All `/publico/img/muestras/*.svg` assets and `foto.jpg` are missing from the repo.
- JS queries `#toogle-details`, but the button is `id="toggle-details"`, so the "Más sobre mí" handler throws and never works.
- `#experience` uses `<lu>` instead of `<ul>`.

Fix these only when the task calls for it; otherwise preserve current behavior. Keep user-facing copy in Spanish.

## Repo conventions
- Git remote `origin` is `https://github.com/CarolinaChz/cv.git`; work on `main`. Commit messages are in Spanish.
- `prompts.md` is the lesson prompt log ("bitácora"): each task gets a `## <task name>` heading with the model and prompt used. Preserve that structure when updating it.
