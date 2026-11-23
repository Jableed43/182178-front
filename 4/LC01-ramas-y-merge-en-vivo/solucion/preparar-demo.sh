#!/usr/bin/env bash
# Prepara el repositorio de práctica para la clase de ramas. Se puede repetir las veces que haga falta.
set -e
DEMO="demo-ramas"
rm -rf "$DEMO" && mkdir "$DEMO" && cd "$DEMO"
git init -q -b main
git config user.name "Demo"
git config user.email "demo@example.com"
# En Windows, sin esto Git avisa "LF will be replaced by CRLF" y tapa la salida
git config core.autocrlf false

cat > index.html <<'HTML'
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

git add . && git commit -q -m "chore: initial commit"
echo "Listo: entrá a la carpeta $DEMO y seguí el guion-comandos.md"
