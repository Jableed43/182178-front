# Creando realidades alternativas

Escribí vos los comandos de cada paso. Si te trabás, están en
`../../LC01-ramas-y-merge-en-vivo/solucion/guion-comandos.md`.

Todo esto se hace en **tu propio repositorio**, el `mi-primer-repo` de la clase pasada.

## 1. Creá la rama `feature/galeria` y movete a ella

TODO (Ejercicio) — y comprobá con `git branch` dónde estás parado.

## 2. Agregá `galeria.html` con algo de texto y commiteá

TODO (Ejercicio)

## 3. Armá el conflicto a propósito

Dos ediciones **de la misma línea**, una en cada rama. Si editás líneas distintas, Git las une
solo y no hay conflicto.

TODO (Ejercicio) — en `main`, editá la línea 1 de `index.html` y commiteá.

TODO (Ejercicio) — en `feature/galeria`, editá esa misma línea con otra frase y commiteá.

## 4. Fusioná y resolvé

TODO (Ejercicio) — desde `main`, `git merge`. Git va a frenar.

Abrí `index.html`: están las marcas `<<<<<<<`, `=======` y `>>>>>>>`. Arriba lo tuyo, abajo lo
que entra. Borrá las tres marcas, dejá el texto final, y sellá.

TODO (Ejercicio) — el `add` y el `commit` que cierran la fusión.

## 5. Publicá el sitio en GitHub Pages

Settings, Pages, rama `main`, carpeta `/ (root)`. Esperá un minuto y abrí la dirección.

Pegá acá la tuya: ____________________________________

## 6. Desafío

Averiguá cómo cambiar el mensaje del último commit con `git commit --amend`, y por qué no
conviene hacerlo con uno que ya subiste.
