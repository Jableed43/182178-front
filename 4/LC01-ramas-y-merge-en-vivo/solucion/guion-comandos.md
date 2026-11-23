# Guion de comandos — ramas y merge

Nombres de rama con convención: `feature/...` (funcionalidad), `bugfix/...` (error menor), `hotfix/...` (emergencia).

## 1. ¿Dónde estoy?

```bash
git branch              # lista las ramas; el * marca la actual
```

## 2. Crear una rama y moverse a ella

```bash
git switch -c feature/login
```

## 3. Trabajar en la rama

```bash
echo "<h1>Iniciar sesión</h1>" > login.html
git add .
git commit -m "feat: agrego la página de login"

git switch main
ls                      # login.html no está: vive solo en feature/login
```

## 4. Unir las ramas (merge)

Se hace parado en la rama que **recibe** los cambios.

```bash
git merge feature/login
ls                      # ahora sí está login.html
```

## 5. Ver el historial y limpiar

```bash
git log --oneline --graph --all
git branch -d feature/login
```
