# Live Coding 1: Ramas y merge en vivo

**Clase 03 — Git Avanzado: Ramas y Colaboración** · Frontend
*(en la cursada es la clase 4)*

## Pasos

1. Corré `bash preparar-demo.sh`: crea `demo-ramas` con un primer commit en `main`.
2. Creá la rama `feature/login` con `git switch -c` y agregá `login.html` con un commit.
3. Volvé a `main` con `git switch main` y comprobá que `login.html` no está.
4. Fusioná con `git merge feature/login` y mirá el árbol con `git log --oneline --graph --all`.

## Objetivo

Ver que una rama es un universo paralelo: el archivo existe en una y no en la otra, hasta que
se fusionan.

## Cómo se corre

```bash
bash preparar-demo.sh
cd demo-ramas
```

El script borra y rehace `demo-ramas/` cada vez, con su propia identidad de Git: no toca
ningún repositorio tuyo y se puede repetir.

## Qué debería verse

En el paso 3, `login.html` **no está** en `main`: el archivo desaparece de la carpeta al
cambiar de rama. Después del merge aparece. Verificado.

## El paso que importa

El paso 3. Que vean el archivo desaparecer del explorador de VS Code es lo que hace entender
qué es una rama. No lo pases rápido.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
