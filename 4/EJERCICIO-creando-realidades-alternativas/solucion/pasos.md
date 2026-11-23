# Creando realidades alternativas

Todo esto se hace en **tu propio repositorio**, el `mi-primer-repo` de la clase pasada. Si no
lo tenés a mano, creá uno nuevo con `git init` y un `index.html` cualquiera.

## 1. Creá la rama y movete a ella

```bash
git switch -c feature/galeria
git branch          # la rama con el asterisco es donde estás parado
```

## 2. Agregá `galeria.html` y commiteá

```bash
git add galeria.html
git commit -m "feat: agrego la galeria"
```

## 3. Armá el conflicto a propósito

Son dos ediciones **de la misma línea**, una en cada rama. Si editás líneas distintas, Git las
une solo y no hay conflicto: por eso tiene que ser la misma.

```bash
git switch main
# editá la LÍNEA 1 de index.html y poné cualquier frase
git commit -am "docs: cambio el titulo desde main"

git switch feature/galeria
# editá ESA MISMA línea con otra frase distinta
git commit -am "docs: cambio el titulo desde la rama"
```

## 4. Fusioná y resolvé

```bash
git switch main
git merge feature/galeria
```

Git frena y avisa `CONFLICT`. Abrí `index.html` en VS Code: vas a ver las marcas
`<<<<<<<`, `=======` y `>>>>>>>`. Arriba está lo tuyo (`HEAD`), abajo lo que entra.

Borrá las tres marcas y dejá **el texto final**, el que querés que quede. Después:

```bash
git add index.html
git commit                 # Git ya trae escrito el mensaje del merge
git log --oneline --graph --all
```

## 5. Publicá el sitio en GitHub Pages

En GitHub, en tu repositorio: **Settings → Pages**. En *Source* elegí la rama `main` y la
carpeta `/ (root)`. Guardá y esperá un minuto: arriba aparece la dirección, con la forma
`https://TU-USUARIO.github.io/mi-primer-repo/`.

Abrila. Si ves tu `index.html`, está publicado.

## 6. Desafío: cambiar el mensaje del último commit

```bash
git commit --amend -m "el mensaje nuevo"
```

Probalo sobre un commit que **todavía no subiste**. Averiguá por qué no conviene hacerlo con
uno ya pusheado: la pista es que `--amend` no edita el commit, crea uno nuevo con otro hash.

## Si algo falla

| Dice | Qué pasó |
| :--- | :--- |
| `Your local changes would be overwritten` | tenés cambios sin commitear: commiteá o `git stash` |
| `CONFLICT (content)` | es lo esperado en el paso 4: resolvelo a mano |
| `not something we can merge` | el nombre de la rama está mal escrito; mirá `git branch` |
| en Pages no aparece nada | tiene que haber un `index.html` en la raíz de la rama elegida |
