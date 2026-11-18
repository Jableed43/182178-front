#!/usr/bin/env bash
# Demo del ciclo de vida de un archivo en Git. Crea una carpeta temporal y recorre todos los estados.
set -e
DEMO="demo-ciclo"
rm -rf "$DEMO" && mkdir "$DEMO" && cd "$DEMO"
git init -q -b main
git config user.name "Demo"
git config user.email "demo@example.com"
# En Windows, sin esto Git avisa "LF will be replaced by CRLF" en cada add y tapa la salida
git config core.autocrlf false

paso() { echo; echo "=== $1"; }

paso "1. Archivo nuevo: está en la HELADERA (untracked, rojo)"
echo "<h1>Hola</h1>" > index.html
git status --short

paso "2. git add: pasa a la BANDEJA (staged, verde)"
git add index.html
git status --short

paso "3. git commit: queda en la BASE DE DATOS (sin cambios pendientes)"
git commit -q -m "feat: primera versión"
git status --short
echo "(limpio)"

paso "4. Lo modificamos: vuelve a estar sucio (rojo)"
echo "<p>Un párrafo</p>" >> index.html
git status --short
git diff --stat

paso "5. git add por error y git restore --staged lo devuelve a la heladera"
git add index.html
git restore --staged index.html
git status --short

paso "6. git restore descarta el cambio y vuelve al último commit"
git restore index.html
git status --short
echo "(limpio, el párrafo desapareció)"

paso "7. Historial"
echo "<p>Un párrafo</p>" >> index.html
git add . && git commit -q -m "feat: agrego un párrafo"
git log --oneline
