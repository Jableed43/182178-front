# Guion de comandos — resolver un conflicto

## 1. Ver qué pasó

```bash
git status              # both modified: index.html
```

El archivo quedó así:

```text
<<<<<<< HEAD
<h1>Bienvenidos a la tienda (Diseño de Juan)</h1>
=======
<h1>Ofertas de Verano (Diseño de Ana)</h1>
>>>>>>> feature/ofertas
```

- Entre `<<<<<<< HEAD` y `=======`: lo que ya había en la rama donde estás parado.
- Entre `=======` y `>>>>>>>`: lo que viene de la rama que querés absorber.

## 2. Resolver

Editá el archivo, borrá las tres líneas de marcas y dejá el código final.
En VS Code también aparecen los botones *Accept Current / Incoming / Both Changes*.

## 3. Sellar la paz

> **TODO (Live Coding): Marcá el conflicto como resuelto con git add y cerrá la fusión con git commit**

## Si te asustaste

> **TODO (Live Coding): Escribí el comando para abortar el merge y volver al estado anterior**
