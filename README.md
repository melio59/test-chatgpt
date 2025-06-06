# test-chatgpt

This repository contains simple browser games written in plain HTML/JS.

- **snake.html** – the Snake game.
- **pacman.html** – a minimal Pac‑Man style game.
- **main.html** – the file served by default. Its content is automatically
  switched between the two games via a scheduled workflow.

A GitHub Actions workflow located in `.github/workflows/switch-game.yml`
runs every ten hours. It executes `switch_game.sh`, which alternates
`main.html` between `snake.html` and `pacman.html` and commits the change.

Another workflow, `.github/workflows/deploy-pages.yml`, publishes the current
`main.html` to the `gh-pages` branch as `index.html` whenever changes are
pushed to `main`. Enable GitHub Pages from that branch to serve the game
online.
