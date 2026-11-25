# Clase 4 - Git avanzado: ramas y colaboración

Segunda clase de Git. La primera fue el flujo básico: `add`, `commit`, `push`. Esta es la que
usás todos los días en un equipo: **ramas**, fusionarlas, resolver un conflicto, y qué no subir
nunca.

Las carpetas se llaman igual que los títulos de las slides. En cada una:

- `inicio/` — el archivo con los huecos `TODO`: el que completás vos en clase.
- `solucion/` — el mismo ya terminado, para comparar.
- `README.md` — los 4 pasos de esa slide.

| Carpeta | Slide | Archivos |
| :--- | :--- | :--- |
| `LC01-ramas-y-merge-en-vivo` | Ramas y merge en vivo | `preparar-demo.sh`, `guion-comandos.md` |
| `LC02-resolve-un-conflicto-de-fusion-en-vivo` | Resolvé un conflicto de fusión en vivo | `armar-conflicto.sh`, `index.resuelto.html` |
| `LC03-gitignore-y-stash-en-vivo` | .gitignore y stash en vivo | `preparar-demo.sh`, `.gitignore` |
| `EJERCICIO-creando-realidades-alternativas` | Creando realidades alternativas | `galeria.html`, `pasos.md` |

## Cómo se corre cada demo

Cada live coding trae un script que arma el repositorio de práctica. Desde Git Bash:

```bash
cd LC01-ramas-y-merge-en-vivo/solucion
bash preparar-demo.sh
cd demo-ramas
```

Los scripts **borran y rehacen** su carpeta cada vez, con su propia identidad de Git. No tocan
ningún repositorio tuyo y los podés correr las veces que quieras. Si algo se desarma, lo
volvés a correr y seguís.

## Cuatro cosas para no olvidarse

- **Una rama es un universo paralelo.** Cuando cambiás de rama, los archivos de la carpeta
  cambian: lo que creaste en una no está en la otra hasta que las fusionás.
- **Un conflicto no es un error.** Es Git diciendo "dos personas cambiaron la misma línea,
  decidí vos". Las marcas `<<<<<<<`, `=======` y `>>>>>>>` no son código: son la pregunta.
  Resolver es borrarlas y dejar el texto final.
- **El `.gitignore` no saca lo que ya está commiteado.** Sólo evita que entre lo que todavía no
  entró. Por eso se escribe al empezar el proyecto, no después.
- **Git te frena si vas a perder trabajo.** Si cambiás de rama con cambios sin commitear que la
  otra rama pisaría, no te deja. Ahí entra `git stash`: guarda el trabajo a medias en un cajón,
  te deja la carpeta limpia, y con `git stash pop` lo recuperás.

## El ejercicio

Está en `EJERCICIO-creando-realidades-alternativas`, pero **no se hace dentro de esa carpeta**:
se hace en tu propio repositorio, el `mi-primer-repo` de la clase pasada. Termina publicando el
sitio en **GitHub Pages**, y ese enlace es el entregable.

## Un extra: el post mortem

`POSTMORTEM-la-carpeta-gris.md` cuenta un error real que tuvo este repositorio preparando la
clase: una carpeta que en GitHub aparecía en gris y llegaba vacía al clonar. Explica qué pasa
cuando un repositorio de Git queda adentro de otro, y `git rm --cached`. No es obligatorio,
pero es la clase de problema que te vas a encontrar trabajando.
