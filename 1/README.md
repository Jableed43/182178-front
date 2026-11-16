# Clase 1 - Introducción al desarrollo web + Introducción a HTML (sintaxis)

Curso de Frontend Developer / Módulo 1: Arquitectura y Maquetación Moderna (HTML y CSS) / Unidad 01

Las carpetas se llaman igual que los títulos de las slides, así podés seguir la
clase sin buscar. En cada una:

- `inicio/` — el archivo con el esqueleto y los comentarios `TODO (Live Coding)`:
  es el que escribís vos durante la clase.
- `solucion/` — el mismo archivo ya terminado, para comparar después.
- `README.md` — los 4 pasos de esa slide.

| Carpeta | Slide | Archivo |
|---|---|---|
| `LC01-tu-primer-archivo-html` | Live Coding: Tu primer archivo HTML | `index.html` |
| `LC02-anatomia-de-las-etiquetas` | Live Coding: Anatomía de las etiquetas | `perfil.html` |
| `LC03-escribi-una-biografia-con-etiquetas-de-texto` | Live Coding: Escribí una biografía con etiquetas de texto | `articulo.html` |
| `EJERCICIO-tu-primera-pagina-con-tu-perfil` | Tu primera página con tu perfil | `index.html` |

El `index.html` que está acá en la raíz es el que escribimos juntos al abrir la
clase. Queda como está.

## Cómo se abre un archivo

Doble clic, o en VS Code botón derecho y "Open with Live Server". Después de cada
Ctrl + S hay que recargar el navegador con F5.

## Dos cosas que conviene mirar bien

- **LC02, paso 3:** cuando rompés la ruta de la imagen a propósito, el navegador
  no dibuja nada y muestra el texto del `alt`. En la consola (F12) aparece un 404.
  Para eso sirve el `alt`.
- **LC03, paso 4:** el `li` suelto, fuera de un `ul`, **no se ve**. El navegador
  igual lo trata como ítem de lista, pero sin el `ul` no hay sangría y la viñeta
  queda fuera de la pantalla. Todo `li` tiene que vivir dentro de un `ul` o un `ol`.
