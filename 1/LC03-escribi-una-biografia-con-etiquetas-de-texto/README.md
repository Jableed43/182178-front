# Live Coding 3: Escribí una biografía con etiquetas de texto

**Clase 01 — Introducción al desarrollo web + Introducción a HTML (sintaxis)** · Frontend

## Qué archivo se abre

En clase abrís **`inicio/articulo.html`**: ahí están los huecos de los pasos 2, 3 y 4.
El `solucion/articulo.html` que cita la slide es el estado final, para comparar.

## Pasos

Son los cuatro pasos de la slide, con las mismas palabras.

1. Abrí `articulo.html` y armá la jerarquía: un `h1`, después `h2` y `h3`.
2. Resaltá palabras con `strong` y `em`, y agregá un enlace con `href`.
3. Armá una lista desordenada y una ordenada: cada ítem va en un `li`.
4. Probá un `li` suelto fuera de una lista y mirá cómo se ve.

## Objetivo

Estructurar un texto con los elementos básicos pensando en el **significado**, no en cómo
se ve.

## Cómo se corre

Abrir `articulo.html` en el navegador.

## Qué debería verse

Una biografía con título, subtítulos, párrafos con palabras destacadas, un enlace, una lista
con viñetas y una numerada.

## Sobre el paso 4

Es el paso con más jugo y conviene hacerlo despacio. El `li` suelto **no se rompe**: el
navegador igual lo trata como ítem de lista (`display: list-item`, `list-style-type: disc`).
Pero como no está dentro de un `ul`, **no hay sangría y la viñeta queda fuera de la
pantalla**, así que ni se ve. Queda un texto suelto que no pertenece a ninguna lista — ni
para el navegador ni para un lector de pantalla.

Se comprueba en vivo con F12 → el `li` seleccionado → pestaña *Computed*. Ya está escrito al
final de `solucion/articulo.html`.

## Lo que conviene decir mientras se escribe

- **Un solo `h1` por página**: es el título principal y ayuda al SEO.
- `strong` y `em` **no son decoración**: le dicen a Google y a los lectores de pantalla que
  esa palabra es importante o enfatizada. `b` e `i` se ven igual pero no significan nada.
  Usá siempre `strong` y `em`.
- La jerarquía de títulos no se saltea: después de un `h2` va un `h3`, no un `h4`.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — el código completo.
- `fuente/` — el mismo código con las marcas de hueco (`>>>LIVE` … `<<<LIVE`).
