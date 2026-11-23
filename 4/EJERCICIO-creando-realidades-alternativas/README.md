# Ejercicio: Creando realidades alternativas

**Clase 03 — Git Avanzado: Ramas y Colaboración** · Frontend
*(en la cursada es la clase 4)*

## Consignas

1. Creá y movete a la rama `feature/galeria` con `git switch -c`.
2. Agregá `galeria.html` con algo de texto y hacé un commit.
3. Simulá un conflicto: en `main`, editá la línea 1 de `index.html` y commiteá; en
   `feature/galeria`, editá esa misma línea con otra frase y commiteá.
4. En `main`, corré `git merge feature/galeria`, abrí VS Code, resolvé el conflicto y sellá con
   un commit.
5. Publicá el repositorio en GitHub Pages y abrí la dirección del sitio.
6. Desafío: investigá cómo cambiar el mensaje del último commit con `git commit --amend`.

## Cómo se corre

**No se hace dentro de esta carpeta**: se hace en tu propio repositorio, el `mi-primer-repo`
de la clase pasada. Acá están el `galeria.html` para agregar y los pasos escritos.

## Qué debería verse

`git log --oneline --graph --all` muestra las dos ramas uniéndose, y la dirección de GitHub
Pages abre tu sitio. Ese enlace es el entregable.

## Carpetas

- `inicio/` — `galeria.html` y `pasos.md` con los huecos `TODO (Ejercicio)`.
- `solucion/` — los mismos pasos con todos los comandos escritos.
- `fuente/` — igual que la solución.
