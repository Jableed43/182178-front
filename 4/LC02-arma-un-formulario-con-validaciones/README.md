# Live Coding 2: Armá un formulario con validaciones

**Clase 04 — HTML Semántico + Formularios + Multimedia** · Frontend
*(en la cursada es la clase 5)*

## Pasos

1. Abrí `formulario.html` y creá el `form` con `action` y `method="POST"`.
2. Vinculá cada `label` con su `input` por `for` e `id` y probá hacer clic en la etiqueta.
3. Agregá `required`, `minlength`, `type="email"`, `min`, `max` y `pattern`.
4. Cambiá `POST` por `GET` y mirá la URL al enviar; quitá un `name` y comprobá que ese dato no
   viaja.

## Objetivo

Que el navegador valide **sin una línea de JavaScript**, y ver con los ojos la diferencia entre
`GET` y `POST`.

## Cómo se corre

Abrí `inicio/formulario.html` con Live Server. El `inicio` trae el `h1` y la lista de campos
como comentarios: el `form` se escribe en vivo.

## Qué debería verse

- Enviar vacío: el navegador frena y marca el primer campo que falta, con su cartel en castellano.
- Con `type="email"` y texto sin arroba: *"Incluye un signo @ en la dirección de correo"*.
- Con `pattern` de 10 dígitos y 9 números: lo rechaza y muestra el texto del `title`.
- Clic en el texto de un `label`: el cursor salta al campo.

## El paso que importa

El paso 4, y son dos descubrimientos en treinta segundos:

- **`GET`**: al enviar, los datos aparecen enteros en la barra de direcciones
  (`?nombre=Juan&clave=...`). Ahí se entiende por qué un login no puede ser `GET`: la
  contraseña queda en el historial.
- **Sin `name`**: el campo se ve, se completa, y al enviar **no está** en la URL. El dato se
  perdió en silencio. Es el error más difícil de encontrar de todo el formulario.

Y el cierre: la validación del navegador es una comodidad para el usuario, no una defensa. Se
saltea desde las DevTools en dos clics. El servidor siempre valida de nuevo.

## Carpetas

- `inicio/` — el `h1` y la guía de campos en comentarios.
- `solucion/` — el formulario completo, con comentarios.
