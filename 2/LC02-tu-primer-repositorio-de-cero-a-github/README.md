# Live Coding 2: Tu primer repositorio, de cero a GitHub

**Clase 02 — Git y GitHub: El flujo de trabajo profesional** · Frontend

## Pasos

1. Configurá tu identidad y la rama principal (una sola vez por computadora).
2. Creá `mi-primer-repo`, entrá y corré `git init`.
3. Copiá `index.html`, mirá `git status` (rojo) y hacé `git add .` (verde).
4. Sellá con `git commit` y creá un repositorio vacío en GitHub.
5. Conectalo con `git remote add origin` y subilo con `git push -u origin main`.

## Objetivo

Presentarse ante Git, crear un repositorio, hacer el primer commit y subirlo a GitHub.

## Cómo se corre

Todo en Git Bash o en la terminal integrada de VS Code (`Ctrl + ñ`).
`guion-comandos.md` tiene los comandos en orden; `index.html` es el archivo que se versiona.

## Qué debería verse

`git log --oneline` muestra un commit, y el repositorio en GitHub muestra `index.html`.

## Ojo con esto

El repositorio de GitHub tiene que crearse **vacío**, sin README ni .gitignore.
Si no, el primer `push` da conflicto: GitHub ya tiene un commit que tu carpeta no tiene.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
