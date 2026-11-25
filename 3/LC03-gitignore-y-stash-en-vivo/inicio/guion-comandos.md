# Guion de comandos — .gitignore y stash

## 1. Lo que NO debe viajar a la nube

```bash
git status              # aparecen .env y node_modules/ como untracked
```

Copiá el `.gitignore` de esta carpeta a la raíz del repositorio (con el punto al inicio) y volvé a mirar:

```bash
git status              # .env y node_modules/ ya no aparecen
```

> Si un archivo **ya fue commiteado**, `.gitignore` no lo saca: hay que quitarlo del índice con `git rm --cached <archivo>`.

## 2. El problema: cambiar de rama con trabajo a medias

Estás en `feature/carrito` con un cambio sin terminar en `index.html`.

```bash
git switch main         # Git frena si el cambio pisaría tu trabajo
```

## 3. El cajón secreto (stash)

> **TODO (Live Coding): Guardá los cambios sucios en el stash, cambiate a main, volvé a la rama y recuperalos**

## 4. Otros comandos del stash

> **TODO (Live Coding): Escribí cómo ver la lista de stashes guardados**
