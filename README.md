# test-chatgpt

This repository contains simple browser games written in plain HTML/JS.

- **snake.html** – the Snake game.
- **pacman.html** – a minimal Pac‑Man style game.
- **main.html** – the file served by default. Its content is automatically
  switched between the two games via a scheduled workflow.

A GitHub Actions workflow located in `.github/workflows/switch-game.yml`
runs every ten hours. It executes `switch_game.sh`, which alternates
`main.html` between `snake.html` and `pacman.html` and commits the change.
