# Live Coding 3: .gitignore y stash en vivo

**Clase 03 — Git Avanzado: Ramas y Colaboración** · Frontend
*(en la cursada es la clase 4)*

## Pasos

1. Corré `bash preparar-demo.sh`: crea `demo-stash` con un `.env` y una carpeta `node_modules/`.
2. Corré `git status` y mirá cómo Git quiere subir el `.env`; agregá el `.gitignore` y corrélo otra vez.
3. Con un cambio sin commitear, probá `git switch main` y mirá la protección de Git.
4. Guardalo con `git stash`, cambiá de rama, volvé y recuperalo con `git stash pop`.

## Objetivo

Dos herramientas del día a día: qué no subir nunca, y dónde dejar un trabajo a medias.

## Cómo se corre

```bash
bash preparar-demo.sh
cd demo-stash
git status
```

## Qué debería verse

Paso 2, antes: `?? .env` y `?? node_modules/`. Después de copiar el `.gitignore`:
**desaparecen los dos**. Verificado.

Paso 3, al cambiar de rama con el cambio sin commitear:

```
error: Your local changes to the following files would be overwritten by checkout:
        index.html
Please commit your changes or stash them before you switch branches.
Aborting
```

Paso 4: `git stash` responde `Saved working directory...`, el `switch` ya funciona, y al volver
`git stash pop` devuelve el cambio.

## Ojo con esto

El paso 3 **sólo falla si las dos ramas tienen distinto ese archivo**. El script lo prepara
así a propósito: la rama `feature/carrito` tiene su propio `index.html`. Si las dos ramas
tuvieran el mismo contenido, Git te deja cambiar y la demo no muestra nada.

Y el `.gitignore` no saca lo que **ya** está commiteado: sólo evita que entre lo que todavía
no entró.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
