#!/usr/bin/env bash
# Deja la carpeta demo-ramas en su estado de partida. Se puede repetir las veces que haga falta.
set -e
DEMO="demo-ramas"
mkdir -p "$DEMO"

# IMPORTANTE: demo-ramas vive DENTRO del repositorio de la clase. Si queda con un
# .git propio adentro, el repositorio de arriba la guarda como un puntero vacío
# (gitlink) y su contenido nunca sube a GitHub: en la web se ve una carpeta gris
# que no se puede abrir. Por eso el script la devuelve a carpeta común.
rm -rf "$DEMO/.git"
find "$DEMO" -mindepth 1 -maxdepth 1 ! -name index.html -exec rm -rf {} +

cat > "$DEMO/index.html" <<'HTML'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi tienda</title>
</head>
<body>
    <h1>Bienvenidos a la tienda</h1>
</body>
</html>
HTML

echo "Listo: entrá con  cd $DEMO  y arrancá por el paso 1 del guion-comandos.md"
