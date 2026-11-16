# Live Coding 1: Tu primer archivo HTML

**Clase 01 — Introducción al desarrollo web + Introducción a HTML (sintaxis)** · Frontend

## Qué archivo se abre

No hay nada que abrir: `inicio/index.html` arranca vacío y el boilerplate se escribe en vivo.
El `solucion/index.html` que cita la slide es el estado final, para comparar.

## Pasos

Son los cuatro pasos de la slide, con las mismas palabras.

1. Creá la carpeta `mi-primera-web` y abrila en VS Code.
2. Creá `index.html` y generá la estructura base con `!` y `Tab`.
3. Cambiá el `title` y escribí un `h1` dentro del `body`.
4. Abrilo con doble clic o con Live Server, y probá `Ctrl + S` y recargar.

## Objetivo

Crear la carpeta del proyecto, el archivo `index.html` con su estructura obligatoria
(el boilerplate) y verlo renderizado en el navegador.

## Cómo se corre

Doble clic en `index.html`, o botón derecho → *Open with Live Server*.

## Qué debería verse

Una pestaña con el título "Mi Primera Web" y el texto del `<h1>` en pantalla. Lo que va
dentro del `<head>` no se ve.

## Lo que conviene decir mientras se escribe

- **Siempre `index`**: es el nombre que buscan los servidores para la página principal.
- Después de generar el boilerplate con `!` + `Tab`, **reconstruilo a mano**, pieza por
  pieza. Si no, queda como magia.
- Las tres piezas del `head` que nunca faltan: `<meta charset="UTF-8">` (tildes y emojis
  sin símbolos rotos), `<meta name="viewport">` (el ancho se adapta al celular) y
  `<title>` (el texto de la pestaña).

## Carpetas

- `inicio/` — el punto de partida. Está **vacío a propósito**: el boilerplate se escribe en vivo.
- `solucion/` — el código completo.
- `fuente/` — el mismo código con las marcas de hueco (`>>>LIVE` … `<<<LIVE`).
