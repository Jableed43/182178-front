# Pasos del ejercicio

Cada bloque es un paso de la consigna. Copiá los comandos de a uno y mirá qué
contesta la terminal antes de seguir.

## 1. Abrí la terminal y creá la carpeta

En VS Code, `Ctrl + ñ`. Si la terminal no es Git Bash: flecha al lado del `+`,
Select Default Profile, Git Bash.

```bash
mkdir mi-primer-repo
```

## 2. Entrá y convertila en repositorio

```bash
cd mi-primer-repo
git init
```

Si es la primera vez en esta computadora, antes presentate ante Git:

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
```

## 3. Creá el index.html

Copiá el `index.html` de la carpeta `inicio/` dentro de `mi-primer-repo`, o
escribilo con el boilerplate de la clase 1.

## 4. Mirá el estado, prepará y volvé a mirar

```bash
git status
git add .
git status
```

En rojo (`?? index.html`) está en la heladera. En verde (`A  index.html`) ya está
en la bandeja.

## 5. Sacá la foto

```bash
git commit -m "chore: initial commit"
git log --oneline
```

## 6. Subilo a GitHub

En GitHub: botón `+`, New repository, nombre `mi-primer-repo`, público, y **no**
marques ninguna casilla (ni README ni .gitignore). GitHub te muestra tres
comandos; son estos:

```bash
git remote add origin https://github.com/TU-USUARIO/mi-primer-repo.git
git branch -M main
git push -u origin main
```

Recargá la página de GitHub: tiene que aparecer `index.html`.

## Si algo falla

| Dice | Qué pasó |
| :--- | :--- |
| `not a git repository` | Te olvidaste el `git init`, o no estás dentro de la carpeta |
| `Please tell me who you are` | Falta el `git config --global user.name` y el `user.email` |
| `nothing to commit` | No hiciste `git add .`, o no hay cambios |
| `remote origin already exists` | Ya corriste el `remote add`; mirá con `git remote -v` |
| `rejected ... fetch first` | El repositorio de GitHub no estaba vacío (tiene README) |
