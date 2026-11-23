# Guion de comandos — ramas y merge

Nombres de rama con convención: `feature/...` (funcionalidad), `bugfix/...` (error menor), `hotfix/...` (emergencia).

## 1. Convertí la carpeta en un repositorio

`demo-ramas` es una carpeta común con un `index.html`. Esto es el repaso de la clase pasada:
sin un primer commit no hay nada de donde sacar una rama.

```bash
git init -b main
git config core.autocrlf false    # en Windows, evita el aviso de LF/CRLF
git add index.html
git commit -m "chore: initial commit"
```

## 2. ¿Dónde estoy?

```bash
git branch              # lista las ramas; el * marca la actual
```

## 3. Crear una rama y moverse a ella

```bash
git switch -c feature/login
```

## 4. Trabajar en la rama

```bash
echo "<h1>Iniciar sesión</h1>" > login.html
git add .
git commit -m "feat: agrego la página de login"

git switch main
ls                      # login.html no está: vive solo en feature/login
```

## 5. Unir las ramas (merge)

Se hace parado en la rama que **recibe** los cambios.

```bash
git merge feature/login
ls                      # ahora sí está login.html
```

## 6. Ver el historial y limpiar

```bash
git log --oneline --graph --all
git branch -d feature/login
```

## Al terminar

```bash
bash ../preparar-demo.sh
```

Devuelve `demo-ramas` a carpeta común (le saca el `.git` y el `login.html`). Hay que correrlo
antes de commitear el repositorio de la clase: si no, Git guarda `demo-ramas` como un puntero
vacío y su contenido no sube a GitHub.
