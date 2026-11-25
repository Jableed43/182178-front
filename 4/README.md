# Clase 5 - HTML semántico, formularios y multimedia

La clase que **cierra HTML**: la próxima empieza CSS.

Tres cosas: dejar de usar `div` para todo, armar un formulario que el navegador valide solo, y
meter imágenes, audio, video y mapas en una página.

Las carpetas se llaman igual que los títulos de las slides. En cada una:

- `inicio/` — el archivo con los huecos `TODO`: el que completás vos en clase.
- `solucion/` — el mismo ya terminado, para comparar.
- `README.md` — los 4 pasos de esa slide.

| Carpeta | Slide | Archivo |
| :--- | :--- | :--- |
| `LC01-de-div-a-etiquetas-semanticas` | De div a etiquetas semánticas | `index.html` |
| `LC02-arma-un-formulario-con-validaciones` | Armá un formulario con validaciones | `formulario.html` |
| `LC03-imagenes-audio-video-e-iframe` | Imágenes, audio, video e iframe | `multimedia.html` |
| `EJERCICIO-la-landing-page-estructurada` | La landing page estructurada | `index.html` + `pasos.md` |

## Cómo se abre cada archivo

Clic derecho sobre el `.html` → **Open with Live Server**. Así se recarga solo cada vez que
guardás.

Si abrís el archivo con doble clic también funciona, pero tenés que recargar a mano con F5.

**El LC 3 necesita internet**: la imagen, el audio, el video, el mapa y el video de YouTube se
cargan de direcciones públicas.

## Cinco cosas para no olvidarse

- **`article` es independiente, `section` agrupa.** La pregunta que lo decide: ¿se entiende solo
  si lo compartís por WhatsApp? Entonces es `article`.
- **El `for` del label y el `id` del input tienen que ser idénticos.** Si lo son, al tocar el
  texto de la etiqueta el cursor salta al campo. Es la prueba de que quedó bien.
- **Sin `name`, el dato no viaja.** El campo se ve, se completa, se envía… y llega vacío. No hay
  ningún error: es el bug más difícil de encontrar de un formulario.
- **GET muestra todo en la barra de direcciones.** Por eso un login o una tarjeta nunca van por
  GET.
- **El `alt` nunca va vacío.** Es lo que se ve si la foto no carga y lo único que escucha una
  persona ciega.

Y una que no se ve: **la validación del navegador no es una defensa**. Se saltea en dos clics
desde las DevTools. El servidor siempre tiene que volver a validar.

## El ejercicio

Está en `EJERCICIO-la-landing-page-estructurada`, con la consigna paso a paso en `pasos.md`:
una landing de consultorio que junta las tres cosas de la clase. En `solucion/` está terminada,
para mirar **después** de intentarla.

Se corrige por cinco cosas: ningún `div` en el esqueleto, la presentación en `article`, cada
`input` con su `label` vinculado y su `name`, los dos radios con el mismo `name`, y los `iframe`
con `title`.
