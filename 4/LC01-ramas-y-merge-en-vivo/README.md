# Live Coding 1: Ramas y merge en vivo

**Clase 03 — Git Avanzado: Ramas y Colaboración** · Frontend
*(en la cursada es la clase 4)*

## Pasos

1. Corré `bash preparar-demo.sh`: deja `demo-ramas` con su `index.html` de partida. Entrá y hacé
   `git init -b main` + el primer commit (repaso de la clase 2).
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

El script devuelve `demo-ramas/` a su estado de partida cada vez: le saca el `.git` y los
archivos que hayas creado. Se puede repetir las veces que haga falta.

**Corré el script también al terminar la clase**, antes de commitear este repositorio.
`demo-ramas` vive adentro del repo de la clase: si se queda con su `.git` propio, Git la guarda
como un puntero vacío y en GitHub se ve una carpeta gris que no se puede abrir.

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
