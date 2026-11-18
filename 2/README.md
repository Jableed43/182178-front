# Clase 2 - Git y GitHub: el flujo de trabajo profesional

Curso de Frontend Developer / Módulo 1: Arquitectura y Maquetación Moderna (HTML y CSS) / Unidad 02

Esta clase es casi toda terminal. Las carpetas se llaman igual que los títulos de
las slides. En cada una:

- `inicio/` — el archivo con los huecos `TODO`: es el que completás vos en clase.
- `solucion/` — el mismo ya terminado, para comparar después.
- `README.md` — los 4 pasos de esa slide.

| Carpeta | Slide | Archivos |
|---|---|---|
| `LC01-el-ciclo-de-vida-de-un-archivo-en-vivo` | Live Coding: El ciclo de vida de un archivo en vivo | `demo-ciclo.sh`, `guion-comandos.md` |
| `LC02-tu-primer-repositorio-de-cero-a-github` | Live Coding: Tu primer repositorio, de cero a GitHub | `guion-comandos.md`, `index.html` |
| `LC03-reescribi-mensajes-de-commit` | Live Coding: Reescribí mensajes de commit | `mensajes.md`, `menu.html`, `portada.html` |
| `EJERCICIO-tu-primer-repositorio` | Tu primer repositorio | `index.html`, `pasos.md` |

## Antes de empezar

Git tiene que estar instalado (viene de la clase 1) y la terminal tiene que ser
**Git Bash**. En VS Code: `Ctrl + ñ` abre la terminal; la flecha al lado del `+`,
Select Default Profile, Git Bash.

Una sola vez por computadora:

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
```

## La demo del ciclo de vida

```bash
cd LC01-el-ciclo-de-vida-de-un-archivo-en-vivo/solucion
bash demo-ciclo.sh
```

Crea una subcarpeta `demo-ciclo/` que borra y rehace cada vez que la corrés, con
su propia identidad de Git. No toca ningún repositorio tuyo y se puede repetir
todas las veces que quieras.

## Tres cosas para no olvidarse

- **Guardar con Ctrl + S no es commitear.** El archivo tiene que pasar a propósito
  por las tres zonas: heladera (`git status` en rojo), bandeja (`git add`, verde) y
  repositorio (`git commit`).
- **`git restore --staged` saca de la bandeja y no toca tu código.** `git restore`
  sin `--staged` sí descarta el cambio, y eso no tiene vuelta atrás: nunca llegó al
  historial.
- **El repositorio de GitHub se crea vacío**, sin README ni .gitignore. Si no, el
  primer `push` da conflicto.

## El ejercicio

Está en `EJERCICIO-tu-primer-repositorio`, pero **no se hace dentro de esa carpeta**:
se hace en una carpeta nueva llamada `mi-primer-repo`. El entregable es el enlace a
tu repositorio en GitHub.
