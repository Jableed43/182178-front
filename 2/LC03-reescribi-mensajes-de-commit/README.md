# Live Coding 3: Reescribí mensajes de commit

**Clase 02 — Git y GitHub: El flujo de trabajo profesional** · Frontend

## Pasos

1. Abrí `mensajes.md` y leé la lista de mensajes malos.
2. Reescribí cada uno con un prefijo y en una sola línea.
3. Armá un cambio con dos arreglos distintos y separalo en dos commits con `git add <archivo>`.
4. Mirá el resultado con `git log --oneline`.

## Objetivo

Escribir mensajes que expliquen **qué** cambió, con prefijos estándar, y hacer commits
chicos: un commit, una idea.

## Cómo se corre

El paso 2 se hace escribiendo en `mensajes.md`.

Para el paso 3 están `menu.html` y `portada.html`, cada uno con un problema distinto:
el menú tiene un enlace roto y la portada tiene el título desalineado. Arreglá los dos,
y después commiteá **uno por vez** con `git add <archivo>` en lugar de `git add .`.

```bash
git add menu.html
git commit -m "fix: corrijo el link roto del menu"
git add portada.html
git commit -m "style: alineo el titulo de la portada"
git log --oneline
```

## Qué debería verse

Dos commits separados en `git log --oneline`, cada uno con una sola idea. Si hubieras
hecho `git add .` habría quedado uno solo, con un mensaje que necesita la palabra "y".

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
