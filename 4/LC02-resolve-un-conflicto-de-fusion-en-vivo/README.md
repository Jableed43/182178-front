# Live Coding 2: Resolvé un conflicto de fusión en vivo

**Clase 03 — Git Avanzado: Ramas y Colaboración** · Frontend
*(en la cursada es la clase 4)*

## Pasos

1. Corré `bash armar-conflicto.sh`: deja dos ramas que cambian la misma línea y el merge frenado.
2. En la carpeta `demo-conflicto`, corré `git status` y buscá `both modified`.
3. Abrí `index.html` y leé las marcas: arriba lo tuyo, abajo lo que entra.
4. Dejá el texto final sin marcas, y sellá con `git add` y `git commit`.

## Objetivo

Que un conflicto deje de dar miedo: es Git pidiendo que elijas, no un error.

## Cómo se corre

```bash
bash armar-conflicto.sh
cd demo-conflicto
git status
```

## Qué debería verse

`git status` dice **`UU index.html`** (en `--short`) o `both modified`, y el archivo tiene las
tres marcas: `<<<<<<< HEAD`, `=======` y `>>>>>>> feature/ofertas`. Verificado.

En `solucion/index.resuelto.html` está cómo queda el archivo una vez resuelto, para comparar.

## Lo que hay que decir

**Las marcas no son código: son una pregunta.** Arriba de `=======` está lo que tenías, abajo
lo que entra. Resolver es borrar las tres líneas de marca y dejar el texto que querés, que
puede ser uno de los dos, los dos, o algo nuevo.

## Carpetas

- `inicio/` — punto de partida con huecos `TODO (Live Coding)`.
- `solucion/` — código completo.
- `fuente/` — código con marcas de hueco.
