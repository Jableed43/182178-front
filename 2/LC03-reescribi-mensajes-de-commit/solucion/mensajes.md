# Mensajes de commit

## Prefijos más usados

| Prefijo | Para qué sirve |
| :--- | :--- |
| `feat` | Una funcionalidad nueva |
| `fix` | Arreglar un error |
| `docs` | Cambios en documentación |
| `style` | Formato, sin cambiar la lógica |
| `refactor` | Reordenar el código sin cambiar lo que hace |
| `chore` | Tareas de mantenimiento |

## Reescribí los mensajes malos

| Mensaje malo | Mensaje bueno |
| :--- | :--- |
| `cambios` | `feat: agrego el formulario de contacto` |
| `arreglé cosas` | `fix: corrijo el link roto del menú` |
| `asdf` | `docs: explico cómo abrir el proyecto en el README` |
| `final final v2` | `style: alineo el título de la portada` |
| `subí todo` | `chore: agrego el archivo .gitignore` |

## Regla de oro

Un commit = una idea. Si el mensaje necesita la palabra "y", probablemente son dos commits.

## Comandos para separar un cambio en dos commits

```bash
git add menu.html
git commit -m "fix: corrijo el link roto del menú"
git add portada.html
git commit -m "style: alineo el título de la portada"
git log --oneline
```
