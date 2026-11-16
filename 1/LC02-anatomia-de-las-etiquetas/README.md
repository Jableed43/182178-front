# Live Coding 2: Anatomía de las etiquetas

**Clase 01 — Introducción al desarrollo web + Introducción a HTML (sintaxis)** · Frontend

## Qué archivo se abre

En clase abrís **`inicio/perfil.html`**: ahí están los huecos de los pasos 2 y 3.
El `solucion/perfil.html` que cita la slide es el estado final, para comparar.

## Pasos

Son los cuatro pasos de la slide, con las mismas palabras.

1. Abrí `perfil.html` y señalá en un párrafo la apertura, el contenido y el cierre.
2. Agregá atributos: `href` y `target` en un enlace, `src` y `alt` en una imagen.
3. Probá una ruta relativa y rompela a propósito para ver qué pasa.
4. Compará `div` y `p` con `span` y `a` mirando los bordes de colores.

## Objetivo

Reconocer las partes de una etiqueta (apertura, contenido, cierre, atributos), usar rutas
relativas, elementos vacíos, y distinguir elementos de bloque de los que van en línea.

## Cómo se corre

Abrir `perfil.html` en el navegador (doble clic o *Live Server*). **La carpeta `img/` tiene
que estar al lado**, si no la ruta relativa no resuelve.

## Qué debería verse

Una ficha de perfil con la imagen, dos enlaces que funcionan, y los bordes de colores que
marcan qué ocupa cada cosa: **rojo (tomate) los bloques** (`p`, `div`) y **azul los que van
en línea** (`span`, `a`).

## Sobre el paso 3

La ruta rota ya está escrita y comentada en `solucion/perfil.html`. Al descomentarla, el
navegador no dibuja nada y en su lugar muestra **el texto del `alt`** — ahí se entiende para
qué sirve. En la consola (F12) aparece el 404.

## Lo que conviene decir mientras se escribe

- Los **elementos vacíos** no envuelven nada y no llevan cierre: `<img>`, `<br>`, `<hr>`.
  Están los tres en el archivo.
- La **regla de oro** del final del archivo: un elemento en línea puede ir dentro de uno de
  bloque, pero **nunca** un bloque (`div`, `h1`) dentro de uno en línea (`a`, `span`).
- El `<style>` del `head` está **solo** para ver los bordes. CSS se da en la clase 5.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — el código completo.
- `fuente/` — el mismo código con las marcas de hueco (`>>>LIVE` … `<<<LIVE`).
