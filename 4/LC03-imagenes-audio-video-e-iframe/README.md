# Live Coding 3: Imágenes, audio, video e iframe

**Clase 04 — HTML Semántico + Formularios + Multimedia** · Frontend
*(en la cursada es la clase 5)*

## Pasos

1. Abrí `multimedia.html` e insertá una imagen dentro de `figure` con su `figcaption`.
2. Agregá un `audio` y un `video` con `controls`; sacá `controls` y comprobá que no se puede dar
   Play.
3. Probá `autoplay muted loop` en el video.
4. Incrustá un mapa y un video de YouTube con `iframe`.

## Objetivo

Que cada atributo se vea en acción: `controls` es lo que dibuja el reproductor, `muted` es lo
que habilita el `autoplay`, y `alt` es lo único que queda cuando la imagen no carga.

## Cómo se corre

Abrí `inicio/multimedia.html` con Live Server. **Hace falta internet**: la imagen, el audio y
el video se cargan de direcciones públicas.

> Probalo con la red del aula antes de la clase. Si el aula bloquea YouTube, el mapa de
> OpenStreetMap suele pasar igual, y conviene tener un `.mp4` y un `.mp3` chicos en la carpeta
> como respaldo.

## Qué debería verse

- La imagen con su epígrafe debajo.
- Sin `controls`: el video aparece como una foto quieta y no hay forma de reproducirlo.
- Con `autoplay muted loop`: arranca solo, sin sonido, y vuelve a empezar.
- Dos rectángulos con páginas ajenas adentro: el mapa y el video.

## El paso que importa

Sacar el `controls`. Es la demostración de que un atributo no es decoración: sin él la etiqueta
`video` funciona, carga el archivo y no sirve para nada.

Y la prueba del `alt`: cambiale una letra al `src` de la imagen. Donde estaba la foto aparece el
texto del `alt`. Eso es exactamente lo que escucha una persona ciega, siempre.

## Carpetas

- `inicio/` — los títulos de cada sección, sin los medios.
- `solucion/` — todo cargado y comentado.
