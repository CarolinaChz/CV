# AGENTS.md

## Overview
Static single-page CV in Spanish. No package manager, build step, lint, or tests; verify changes by opening `index.html` in a browser and checking the DevTools console.

## Structure
Keep this exact layout and keep the references in `index.html` in sync:

- `index.html` — all markup; sections `#about`, `#projects`, `#experience`, `#education`, `#certifications`, `#skills`
- `css/styles.css` — all styles
- `js/scripts.js` — gallery and "Más sobre mí" interactions

## Known issues (page is incomplete as-is)
- Most images point to `/publico/img/muestras/*.svg` and `foto.jpg`; those assets are not in the repo.
- `#experience` uses `<lu>` instead of `<ul>`.
- Several nav labels say "Perfil" regardless of their target.

Fix these only when the task calls for it; otherwise preserve current behavior. Keep user-facing copy in Spanish.

## Repo conventions
- Git remote `origin` is `https://github.com/CarolinaChz/cv.git`; work on `main`. Commit messages are in Spanish.
- `prompts.md` is the lesson prompt log ("bitácora"): each task gets a `## <task name>` heading with the model and prompt used. Preserve that structure when updating it.
