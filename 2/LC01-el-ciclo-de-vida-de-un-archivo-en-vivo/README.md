# Live Coding 1: El ciclo de vida de un archivo en vivo

**Clase 02 — Git y GitHub: El flujo de trabajo profesional** · Frontend

## Pasos

1. Corré `bash demo-ciclo.sh` para ver el recorrido completo (sirve para ensayar).
2. Repetilo a mano en una carpeta nueva con `guion-comandos.md`.
3. Modificá un archivo ya commiteado y mirá la diferencia con `git diff`.
4. Hacé `git add` por error y deshacelo con `git restore --staged`.

## Objetivo

Ver con los propios ojos cómo un archivo pasa por la heladera (working directory), la bandeja (staging area) y la base de datos (repositorio).

## Cómo se corre

```bash
bash demo-ciclo.sh
```

El script trabaja en una subcarpeta `demo-ciclo/` que crea y borra él mismo, con su propia identidad de Git: no toca ningún repositorio tuyo.

## Qué debería verse

Siete pasos numerados en pantalla. En cada uno, el `git status --short` del estado:
`?? index.html` (heladera), `A  index.html` (bandeja), nada (limpio), ` M index.html`
(modificado). Al final, un historial de dos commits.

## El paso que importa

`git restore --staged` saca el archivo de la bandeja pero **no toca tu código**.
`git restore` sin `--staged` sí lo descarta y vuelve al último commit: ese no tiene
vuelta atrás, porque el cambio nunca llegó a la base de datos.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
