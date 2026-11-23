#!/usr/bin/env bash
# Arma un repositorio con un conflicto de fusión listo para resolver. Se puede repetir.
set -e
DEMO="demo-conflicto"
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

# Rama de Ana: cambia el título
git switch -q -c feature/ofertas
sed -i 's|<h1>.*</h1>|<h1>Ofertas de Verano (Diseño de Ana)</h1>|' index.html
git commit -q -am "feat: título de ofertas de verano"

# Rama main (Juan): cambia LA MISMA línea
git switch -q main
sed -i 's|<h1>.*</h1>|<h1>Bienvenidos a la tienda (Diseño de Juan)</h1>|' index.html
git commit -q -am "feat: nuevo título de bienvenida"

# El merge se frena con conflicto (por eso el || true)
git merge feature/ofertas || true
echo
echo "Conflicto listo. Entrá a $DEMO, corré git status y abrí index.html"
