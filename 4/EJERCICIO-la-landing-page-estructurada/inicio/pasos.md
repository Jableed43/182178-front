# La landing page estructurada

Una página de aterrizaje para un consultorio, con semántica estricta, multimedia y un
formulario de reserva de turnos. Es la suma de los tres live coding de la clase.

Arrancá de un `index.html` con el boilerplate (`!` + Tab en VS Code) y abrilo con Live Server.

## 1. El esqueleto

Dentro del `body`, tres zonas: `header`, `main` y `footer`. Ningún `div`.

En el `header`, el `h1` con el nombre del consultorio y un `nav` con tres enlaces.

## 2. El contenido, dentro de main

- Un **`article`** de presentación: quiénes son, qué atienden. Va en `article` y no en `section`
  porque se entiende solo, incluso fuera de esta página.
- Una **`section`** de contacto con la dirección y un **mapa** en un `iframe`.

Para el mapa: en Google Maps, *Compartir → Insertar un mapa*, y copiás el código. El `iframe`
del archivo de solución usa OpenStreetMap, que no pide cuenta.

## 3. El video

Otra `section`, con un video de YouTube en un `iframe`. En el video: *Compartir → Insertar*.

Al `iframe` ponele `title`: es lo que lee un lector de pantalla, y sin él la página no es
accesible.

## 4. El formulario de turnos

Una `section` con un `form` de `method="POST"` y estos campos:

| Campo | Tipo | Detalle |
| :--- | :--- | :--- |
| Nombre del paciente | `text` | con su `label` vinculado por `for` / `id` |
| Email | `email` | el `type` ya valida el formato |
| Fecha del turno | `date` | |
| Franja | dos `radio` | **el mismo `name`**: es lo que hace que no se marquen las dos |
| Botón | `submit` | el texto es "Solicitar Turno" |

Acordate: **cada campo necesita `name`**, o el dato no viaja.

## 5. Probalo antes de entregar

- Clic en el texto de un `label`: el cursor tiene que saltar al campo. Si no salta, el `for` no
  coincide con el `id`.
- Enviar vacío: el navegador tiene que frenarte y marcar el campo.
- Marcar "Mañana" y después "Tarde": la primera se tiene que desmarcar sola. Si quedan las dos,
  los radios no comparten el `name`.

## Si algo falla

| Pasa esto | Qué mirar |
| :--- | :--- |
| el mapa o el video no cargan | no hay internet, o el `src` quedó cortado al copiarlo |
| el clic en el label no hace nada | `for` e `id` distintos (o falta el `id`) |
| se marcan los dos radios | tienen `name` distinto |
| el formulario se envía vacío | falta `required` |
| al enviar aparece un error 404 | es lo esperado: no hay servidor en `/turnos`. Lo que importa es que el navegador haya dejado enviar |
