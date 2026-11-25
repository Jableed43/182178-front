#!/usr/bin/env bash
# Prepara el repositorio de práctica para .gitignore y stash. Se puede repetir.
set -e
DEMO="demo-stash"
rm -rf "$DEMO" && mkdir "$DEMO" && cd "$DEMO"
git init -q -b main
git config user.name "Demo"
git config user.email "demo@example.com"
# En Windows, sin esto Git avisa "LF will be replaced by CRLF" en cada add y tapa la salida
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

# Archivos que NUNCA deberían subirse
echo "API_KEY=clave-super-secreta" > .env
mkdir -p node_modules/paquete && echo "pesadisimo" > node_modules/paquete/index.js

# Una rama donde el MISMO archivo quedó distinto. Esto es lo que hace que,
# más tarde, Git se niegue a cambiar de rama con cambios sin commitear:
# si las dos ramas tuvieran el mismo index.html, Git te dejaría pasar y la
# demo del paso 3 no mostraría nada.
git switch -q -c feature/carrito
cat > index.html <<'HTML'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mi tienda</title>
</head>
<body>
    <h1>Bienvenidos a la tienda</h1>
    <p>Carrito: 0 productos</p>
</body>
</html>
HTML
# OJO: add de ESE archivo, no "git add ." — si no, el .env y node_modules
# entrarían al commit y la demo del .gitignore se arruina.
git add index.html && git commit -q -m "feat: agrego el carrito"

# Y de vuelta en main, un trabajo a medias SIN commitear sobre ese mismo archivo
git switch -q main
echo "    <p>Oferta de la semana...</p>" >> index.html

echo "Listo: entrá a $DEMO, corré git status y seguí el guion-comandos.md"
