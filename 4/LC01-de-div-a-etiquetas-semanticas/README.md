# Live Coding 1: De div a etiquetas semánticas

**Clase 04 — HTML Semántico + Formularios + Multimedia** · Frontend
*(en la cursada es la clase 5)*

## Pasos

1. Abrí `index.html` de `inicio`: toda la página está armada con `div` sin significado.
2. Reemplazá cada `div` por `header`, `nav`, `main`, `section`, `article`, `aside` y `footer`.
3. Agregá `aria-label` a la navegación.
4. Compará con `solucion` y respondé el checkpoint de la noticia.

## Objetivo

Ver que la página **se ve exactamente igual** y aun así el código ahora dice qué es cada parte.
La semántica no cambia el aspecto: cambia lo que entienden Google y un lector de pantalla.

## Cómo se corre

Abrí `inicio/index.html` con Live Server (clic derecho → *Open with Live Server*).

## Qué debería verse

Antes y después, lo mismo: títulos, párrafos y enlaces sin estilo. La diferencia está en las
DevTools → pestaña **Accessibility**: con `div` el árbol está vacío; con las etiquetas
semánticas aparecen las regiones (banner, navigation, main, complementary, contentinfo).

## El paso que importa

El checkpoint del paso 4: **10 noticias en la portada de un diario, ¿`section` o `article`?**
Son `article`: cada noticia se entiende sola si la compartís por WhatsApp. La `section` es la
que las agrupa ("Portada", "Deportes"). Esa es toda la diferencia, y es la pregunta que más
aparece en el parcial.

## Carpetas

- `inicio/` — la página con `div`, para convertir.
- `solucion/` — la versión semántica, con comentarios que explican cada elección.
