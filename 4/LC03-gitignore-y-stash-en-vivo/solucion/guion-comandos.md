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

```bash
git stash
git switch main
# ... acá arreglás la urgencia ...
git switch feature/carrito
git stash pop
```

## 4. Otros comandos del stash

```bash
git stash list
```
