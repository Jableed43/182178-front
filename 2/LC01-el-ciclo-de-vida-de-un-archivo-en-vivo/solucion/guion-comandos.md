# Guion de comandos — ciclo de vida de un archivo

La analogía de la cocina: **heladera** (working directory) → **bandeja** (staging area) → **foto** (repositorio).

## 1. Un archivo nuevo

```bash
echo "<h1>Hola</h1>" > index.html
git status --short      # ?? index.html  -> untracked (rojo)
```

## 2. A la bandeja y a la foto

```bash
git add index.html
git status --short      # A  index.html  -> staged (verde)
git commit -m "feat: primera versión"
```

## 3. Cambiar y comparar

```bash
echo "<p>Un párrafo</p>" >> index.html
git diff
```

## 4. Deshacer

```bash
git add index.html
git restore --staged index.html   # vuelve a la heladera, no borra tu código
git restore index.html            # descarta el cambio: vuelve al último commit
```

## Checkpoint

Si se corta la luz después de modificar un archivo pero **antes** del `git add`, ¿Git puede salvar el trabajo? *(Pista: ¿llegó el cambio a la base de datos del repositorio?)*
