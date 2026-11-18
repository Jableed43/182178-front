# Guion de comandos — primer repositorio

## 1. Presentate ante Git (una sola vez por computadora)

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
```

## 2. Creá el repositorio

```bash
mkdir mi-primer-repo
cd mi-primer-repo
git init
```

## 3. Mirá el estado y preparalo

Copiá `index.html` dentro de la carpeta.

```bash
git status
git add .
git status
```

## 4. Sacá la foto

```bash
git commit -m "chore: initial commit"
git log --oneline
```

## 5. Subilo a GitHub

Primero creá en GitHub un repositorio **vacío** (sin README ni .gitignore).

```bash
git remote add origin https://github.com/tu-usuario/mi-primer-repo.git
git branch -M main
git push -u origin main
```

## Rutina diaria

```bash
git add .
git commit -m "feat: agregué el título principal"
git push
```
