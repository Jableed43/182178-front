# Post mortem: la carpeta que aparecía en gris en GitHub

Esto pasó de verdad, en este repositorio, preparando la clase de ramas. Lo escribo porque el
error es de los que te van a pasar, y porque entenderlo explica algo de cómo funciona Git por
abajo.

Un *post mortem* es lo que se escribe en un equipo después de que algo se rompe: qué se vio,
qué lo causó, cómo se arregló y qué se cambia para que no vuelva a pasar. No busca culpables,
busca que el equipo aprenda. Leelo con esa idea.

## 1. El síntoma

En GitHub, la carpeta `4/LC01-ramas-y-merge-en-vivo/inicio/demo-ramas` se veía **en gris, con
una flechita, y no se podía abrir**. Clic y no pasaba nada.

Peor: si clonabas el repositorio, esa carpeta llegaba **vacía**. Los archivos estaban en mi
máquina y no había forma de que llegaran a la tuya.

## 2. Qué se vio al investigar

Git guarda, para cada archivo que sigue, un modo (un permiso, como en Linux). Pedirle la lista
de lo que tiene registrado en esa carpeta mostró esto:

```
$ git ls-files -s 4/LC01-ramas-y-merge-en-vivo/inicio/demo-ramas
160000 commit a06cce12e8ea26acaeae7484f90e6ce6db27ab18	…/demo-ramas
```

Los modos normales son `100644` (archivo) y `100755` (archivo ejecutable). Este decía
**`160000`**, y en lugar de un *blob* (contenido) decía **`commit`**.

Y al querer tocar algo adentro:

```
fatal: Pathspec '…/demo-ramas/index.html' is in submodule '…/demo-ramas'
```

Git no estaba guardando los archivos de esa carpeta. Estaba guardando **el número de un
commit**.

## 3. La causa

`demo-ramas` es la carpeta de práctica del live coding de ramas. El script la creaba y le hacía
`git init`: le ponía **su propio `.git` adentro**.

Pero esa carpeta vive dentro del repositorio de la materia, que **también** es un repositorio.
Un repositorio adentro de otro.

Y acá está la regla:

> **Git nunca guarda el contenido de una carpeta que tiene su propio `.git` adentro.** Cuando
> hacés `git add` sobre ella, no guarda los archivos: guarda un **puntero** (se llama
> *gitlink*, modo `160000`) que dice "acá va el repositorio tal, en el commit tal".

Eso es un **submódulo**, y es una función útil cuando se usa a propósito: sirve para meter la
librería de otro equipo dentro de tu proyecto sin copiarla. Para eso hace falta un archivo
`.gitmodules` que diga **de dónde** bajar ese repositorio.

Acá no había ningún `.gitmodules`. El puntero decía "el commit `a06cce12`" y ese commit existía
sólo en un `.git` de mi disco. Nadie, nunca, lo iba a poder bajar. Un cartel apuntando a una
calle que no está en ningún mapa.

Y el remate: después borré ese `.git` para rehacer la demo. El puntero quedó apuntando a la
nada. Por eso ya no se podía ni volver a agregar la carpeta: Git seguía viendo un submódulo ahí
y se negaba a mirar adentro.

## 4. El arreglo

Tres cosas, en este orden:

```bash
git rm --cached 4/LC01-ramas-y-merge-en-vivo/inicio/demo-ramas
```

`git rm --cached` saca algo del seguimiento de Git **sin borrarlo del disco**. Esto quitó el
puntero roto. Los archivos siguieron ahí, intactos.

```bash
rm -rf 4/LC01-ramas-y-merge-en-vivo/inicio/demo-ramas/.git
```

Al sacarle el `.git`, `demo-ramas` dejó de ser un repositorio y pasó a ser una carpeta común.
Recién ahí Git la miró adentro y vio el `index.html`.

Después, un `git add` normal: la carpeta quedó con modo `100644`, visible en GitHub y presente
en cualquier clon.

## 5. Qué se cambió para que no vuelva a pasar

El live coding se dio vuelta. El script **ya no crea el repositorio**: ahora sólo deja la
carpeta con su `index.html`, y el `git init` lo hacés vos como paso 1 del guion.

Salió mejor que antes, de hecho. Antes el repositorio aparecía hecho por arte de magia; ahora se
ve de dónde sale la historia sobre la que después ramificás.

El mismo script, corrido de nuevo, le borra el `.git` que hayas creado y devuelve la carpeta a
cero. Es el botón de reset y el de limpieza al terminar.

## 6. Lo que te llevás

- **Un repositorio adentro de otro no se guarda: se apunta.** Si ves una carpeta en gris en
  GitHub que no se puede abrir, casi seguro tiene un `.git` adentro.
- **Modo `160000` es un submódulo.** Con `git ls-files -s` lo ves. `100644` es un archivo normal.
- **Un submódulo sin `.gitmodules` está roto de nacimiento.** El puntero no dice de dónde bajar
  nada.
- **`git rm --cached` saca del seguimiento sin borrar del disco.** El comando para "Git, dejá de
  mirar esto" sin perder el archivo. Es el que se usa cuando algo entró al repositorio y no
  tenía que entrar.
- **El `.gitignore` no era la solución acá.** Habría tapado el síntoma: la carpeta ya no
  molestaba, pero tampoco llegaba a ustedes. Ignorar algo es decidir que no forma parte del
  proyecto; no es una forma de arreglar lo que sí tiene que estar.

## 7. Cómo te das cuenta a tiempo

Antes de commitear, mirá qué estás por guardar:

```bash
git status
git ls-files -s | grep 160000     # si algo aparece, es un submódulo
```

Si estás por hacer `git add` de una carpeta que bajaste, clonaste o que creó un script, fijate
primero si tiene un `.git` adentro:

```bash
ls -a la-carpeta
```

Y la costumbre que evita casi todos los sustos de este tipo: **`git add` del archivo que querés,
no `git add .`**. El punto agarra todo, incluido lo que no sabías que estaba ahí.
