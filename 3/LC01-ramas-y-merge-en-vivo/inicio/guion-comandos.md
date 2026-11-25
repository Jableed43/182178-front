# Guion de comandos — ramas y merge

Nombres de rama con convención: `feature/...` (funcionalidad), `bugfix/...` (error menor), `hotfix/...` (emergencia).

## 1. Convertí la carpeta en un repositorio

`demo-ramas` es una carpeta común con un `index.html`. Esto es el repaso de la clase pasada:
sin un primer commit no hay nada de donde sacar una rama.

> **TODO (Live Coding): Dentro de demo-ramas, hacé git init y dejá el primer commit**

## 2. ¿Dónde estoy?

```bash
git branch              # lista las ramas; el * marca la actual
```

## 3. Crear una rama y moverse a ella

> **TODO (Live Coding): Creá y movete a la rama feature/login en un solo comando (git switch -c)**

## 4. Trabajar en la rama

> **TODO (Live Coding): Creá login.html, commiteá, y comprobá que en main ese archivo no existe**

## 5. Unir las ramas (merge)

Se hace parado en la rama que **recibe** los cambios.

> **TODO (Live Coding): Estando en main, fusioná feature/login**

## 6. Ver el historial y limpiar

> **TODO (Live Coding): Mirá el grafo de commits y borrá la rama ya fusionada**

## Al terminar

```bash
bash ../preparar-demo.sh
```

Devuelve `demo-ramas` a carpeta común (le saca el `.git` y el `login.html`). Hay que correrlo
antes de commitear el repositorio de la clase: si no, Git guarda `demo-ramas` como un puntero
vacío y su contenido no sube a GitHub.
