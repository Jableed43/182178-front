# Guion · Clase 02 — Git y GitHub: el flujo de trabajo profesional

Sigue el orden del pptx **Clase-02-Git-GitHub-Flujo-Profesional**, slide por slide.
Los tres Live Coding están donde el deck los pone.

Las salidas de terminal que aparecen acá **son reales**: salieron de correr los archivos
en Git Bash sobre Windows, no están escritas de memoria.

| Live Coding | Carpeta | Dónde cae |
| :-- | :--- | :--- |
| 1. El ciclo de vida de un archivo en vivo | [LC01-el-ciclo-de-vida-de-un-archivo-en-vivo](LC01-el-ciclo-de-vida-de-un-archivo-en-vivo) | después de las tres zonas |
| 2. Tu primer repositorio, de cero a GitHub | [LC02-tu-primer-repositorio-de-cero-a-github](LC02-tu-primer-repositorio-de-cero-a-github) | después de conectar con GitHub |
| 3. Reescribí mensajes de commit | [LC03-reescribi-mensajes-de-commit](LC03-reescribi-mensajes-de-commit) | después de los prefijos |
| Ejercicio | [EJERCICIO-tu-primer-repositorio](EJERCICIO-tu-primer-repositorio) | cierre |

**Duración:** 2h50 con todo. Con los tres recortes del final queda en **2h25**, sin
tocar el Live Coding 2 ni el ejercicio.

| Bloque | Min |
| :-- | --: |
| Antes de entrar | 5 |
| 1. Qué es el control de versiones | 25 |
| 2. Las tres zonas | 25 |
| **Live Coding 1** | 20 |
| 3. De la carpeta a la nube | 20 |
| **Live Coding 2** | 25 |
| 4. Rutina diaria y buenos mensajes | 15 |
| **Live Coding 3** | 15 |
| Ejercicio | 10 |
| Preguntas y cierre | 10 |

---

## Antes de entrar (5 min)

1. **Git Bash** abierto, con fuente grande.
2. **VS Code** abierto en una carpeta nueva y vacía. Todas las demos se hacen ahí.
3. Tu **cuenta de GitHub** logueada en el navegador, en una pestaña aparte.
4. Dejá a mano la pestaña de `LC01-el-ciclo-de-vida-de-un-archivo-en-vivo/solucion/demo-ciclo.sh`.

Dos cosas para chequear antes de empezar, porque si fallan se cae media clase:

```bash
git --version
git config --global --list | grep user
```

Si la terminal de VS Code no es Git Bash: flecha al lado del `+`, **Select Default
Profile**, **Git Bash**. Vale mostrarlo en vivo, es la primera piedra con la que
tropiezan en Windows.

---

## Bloque 1 — Qué es el control de versiones (~25 min, sin código)

### 1a) El gancho (~3 min)

*"¿Qué pasa si mañana borrás sin querer una línea vital y no te acordás cómo era?"*

Y la otra: `tesis.doc`, `tesis_final.doc`, `tesis_final_ESTA_SI.doc`. Todos lo vivieron.
El problema no es tener copias: es que no sabés **qué** cambió, **quién** lo cambió ni
cómo volver.

### 1b) Distribuido, repositorio y la carpeta .git (~10 min)

| # | Qué hacés | Qué decís |
| :-- | :--- | :--- |
| 1 | Nada en pantalla todavía | Antes había un servidor central con el historial. Con Git **cada uno tiene la historia completa** en su disco. |
| 2 | `ls -a` en una carpeta que ya tenga `.git` | Esa carpeta oculta es el cerebro: ahí vive todo el historial comprimido. |
| 3 | Señalá el WARNING del deck | Si borrás `.git`, la carpeta vuelve a ser común y **perdés todo el historial para siempre**. |

Ventajas y desventajas: decilas las dos. Que los comandos intimidan al principio es
verdad, y conviene admitirlo ahora para que no se desanimen en la clase 3.

### 1c) Un commit es una foto (~5 min)

La analogía que mejor funciona: **guardar la partida en un videojuego**. Si más adelante
algo se rompe, volvés a ese punto donde todo funcionaba.

Dato que sorprende: Git guarda la **instantánea completa** del proyecto, no sólo la
diferencia. Y cada foto tiene un hash de 40 caracteres que es su DNI.

### 1d) Git no es GitHub (~7 min)

El error número uno. La analogía: **Git es la cámara de fotos, GitHub es Instagram**.
Git no necesita internet; GitHub sí.

Nombrá GitLab y Bitbucket en una línea cada uno: que sepan que GitHub no es el único,
porque en la primera empresa capaz usan otro.

---

## Bloque 2 — Las tres zonas (~25 min)

### 2a) Presentate ante Git (~5 min)

Esto se corre **en vivo**, aunque ya lo tengas hecho: que vean los tres comandos.

```bash
git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
git config --global init.defaultBranch main
```

La aclaración de `master` vs `main`: históricamente la rama principal se llamaba
`master`, hoy el estándar es `main`. **El deck usa siempre `main`.** Si en algún apunte
viejo ven `master`, es lo mismo con otro nombre.

### 2b) La cocina (~8 min, pizarrón)

Tres zonas, tres palabras. Dibujalas antes de tocar la terminal:

| Zona | Analogía | Estado |
| :-- | :--- | :--- |
| Working Directory | la heladera: archivos sueltos | untracked / modified |
| Staging Area | la bandeja de preparación | staged |
| Repository | el plato terminado, con su foto | committed |

**La frase del bloque:** *guardar con `Ctrl + S` no alcanza*. El código tiene que pasar
a propósito por las tres.

### 2c) Checkpoint: se corta la luz antes del add (~4 min)

> Hiciste un cambio grande, todavía no usaste `git add`, y se corta la luz.
> ¿Git puede salvarte?

Dejalos contestar. **La respuesta es no**: el cambio nunca llegó a la base de datos del
repositorio, Git ni se enteró de que existía. Es la mejor justificación de por qué se
commitea seguido.

### 2d) Leer git status --short (~8 min)

Los cuatro códigos. Lo importante es **dónde** está la letra, no qué letra es: la
primera columna es la bandeja, la segunda es la heladera.

| Código | Significado | Zona |
| :-- | :--- | :--- |
| `??` | archivo nuevo que Git no sigue | heladera |
| ` M` | modificado, sin preparar | heladera |
| `A ` | nuevo ya preparado | bandeja |
| `M ` | modificado ya preparado | bandeja |

---

## Live Coding 1 — El ciclo de vida de un archivo en vivo (~20 min)

Carpeta: [LC01-el-ciclo-de-vida-de-un-archivo-en-vivo](LC01-el-ciclo-de-vida-de-un-archivo-en-vivo)

Los 4 pasos de la slide:

1. Corré `bash demo-ciclo.sh` para ver el recorrido completo (sirve para ensayar).
2. Repetilo a mano en una carpeta nueva con `guion-comandos.md`.
3. Modificá un archivo ya commiteado y mirá la diferencia con `git diff`.
4. Hacé `git add` por error y deshacelo con `git restore --staged`.

**Cómo darlo:** el paso 1 es para ensayar antes de la clase, no para proyectarlo. En
vivo conviene hacerlo **a mano** (paso 2) y dejar el script como red: si algo se
desarma, lo corrés y seguís.

```bash
cd LC01-el-ciclo-de-vida-de-un-archivo-en-vivo/solucion
bash demo-ciclo.sh
```

Crea una subcarpeta `demo-ciclo/` que borra y rehace cada vez, con su propia identidad
de Git. **No toca ningún repositorio tuyo** y se puede repetir todas las veces que
quieras. Salida real, los 7 pasos:

```
=== 1. Archivo nuevo: está en la HELADERA (untracked, rojo)
?? index.html
=== 2. git add: pasa a la BANDEJA (staged, verde)
A  index.html
=== 3. git commit: queda en la BASE DE DATOS (sin cambios pendientes)
(limpio)
=== 4. Lo modificamos: vuelve a estar sucio (rojo)
 M index.html
 index.html | 1 +
=== 5. git add por error y git restore --staged lo devuelve a la heladera
 M index.html
=== 6. git restore descarta el cambio y vuelve al último commit
(limpio, el párrafo desapareció)
=== 7. Historial
4b43129 feat: agrego un párrafo
cdf91bc feat: primera versión
```

| # | Qué hacés | Qué decís |
| :-- | :--- | :--- |
| 1 | `echo "<h1>Hola</h1>" > index.html` y `git status --short`, da `?? index.html` | Heladera. Git lo ve pero no lo sigue. |
| 2 | `git add index.html` y de nuevo, da `A  index.html` | Pasó a la bandeja. **Todavía no hay foto.** |
| 3 | `git commit -m "feat: primera versión"`, el status queda limpio | Ahora sí está en el historial. |
| 4 | Agregá un párrafo y `git diff` | Mostrá el `+` de la línea nueva: eso es lo que cambió. |
| 5 | `git add` y después `git restore --staged index.html` | Volvió a la heladera **y tu párrafo sigue ahí**. |
| 6 | `git restore index.html` | Y acá el párrafo **desapareció**. Esta es la que no tiene vuelta atrás. |

**El punto del bloque, y vale decirlo despacio:** `git restore --staged` saca de la
bandeja y no toca tu código. `git restore` sin `--staged` descarta el cambio y no se
recupera, porque nunca llegó al historial. Es el mismo caso que el corte de luz.

> Si alguien pregunta por los `warning: LF will be replaced by CRLF`: no van a
> aparecer. El script apaga `core.autocrlf` en su propio repo justo para que la salida
> quede limpia. En los repos de ellos sí van a verlo, y es sólo un aviso de fin de línea
> entre Windows y Linux.

---

## Bloque 3 — De la carpeta a la nube (~20 min)

### 3a) Dos formas de empezar (~4 min)

| | Desde cero | Clonando |
| :-- | :--- | :--- |
| Cuándo | la idea nace en tu PC | el repo ya existe en GitHub |
| Primer paso | `git init` | `git clone <URL>` |
| Qué trae | carpeta vacía vigilada | la carpeta con todo su historial |

### 3b) Crear el repositorio en GitHub (~8 min, en el navegador)

Botón `+`, **New repository**, nombre, **público**, **ninguna otra casilla marcada**.

> **Insistí acá.** El repositorio tiene que nacer **vacío**, sin README ni .gitignore.
> Si no, el primer `push` rebota con `rejected... fetch first`, porque GitHub ya tiene
> un commit que la carpeta de ellos no tiene. Es el error que más mails te va a generar.

### 3c) Conectar (~8 min)

```bash
git remote add origin https://github.com/tu-usuario/tu-repo.git
git branch -M main
git push -u origin main
```

Qué es la `-u`: *"recordá de ahora en adelante que el repo de internet se llama `origin`
y la rama es `main`"*. Por eso después alcanza con `git push` pelado.

---

## Live Coding 2 — Tu primer repositorio, de cero a GitHub (~25 min)

Carpeta: [LC02-tu-primer-repositorio-de-cero-a-github](LC02-tu-primer-repositorio-de-cero-a-github)

Los 5 pasos de la slide:

1. Configurá tu identidad y la rama principal (una sola vez por computadora).
2. Creá `mi-primer-repo`, entrá y corré `git init`.
3. Copiá `index.html`, mirá `git status` (rojo) y hacé `git add .` (verde).
4. Sellá con `git commit` y creá un repositorio vacío en GitHub.
5. Conectalo con `git remote add origin` y subilo con `git push -u origin main`.

Los comandos en orden están en
[solucion/guion-comandos.md](LC02-tu-primer-repositorio-de-cero-a-github/solucion/guion-comandos.md),
y el archivo que se versiona en
[solucion/index.html](LC02-tu-primer-repositorio-de-cero-a-github/solucion/index.html).

**Este es el momento en que ellos tipean con vos.** Andá despacio y esperá a que todos
terminen cada paso: el que se queda atrás acá no se recupera solo.

Verificado de punta a punta (pasos 1 a 5; el 6 necesita tu cuenta):

```
-- git status --        ?? index.html
-- despues del add --   A  index.html
-- log --               bca669f chore: initial commit
-- status final --      (limpio)
```

Después del push, **recargá la página de GitHub en vivo**: que vean aparecer el
`index.html`. Ese momento es el que cierra la clase.

| Si dice | Qué pasó |
| :-- | :--- |
| `not a git repository` | falta el `git init`, o no están dentro de la carpeta |
| `Please tell me who you are` | falta el `git config --global user.name` / `user.email` |
| `nothing to commit` | no hicieron `git add .` |
| `remote origin already exists` | ya corrieron el `remote add`; mirar con `git remote -v` |
| `rejected ... fetch first` | el repo de GitHub no estaba vacío |

> Si piden credenciales en el push, es el login de GitHub en el navegador o un token.
> No te metas con SSH hoy: es clase 3.

---

## Bloque 4 — Rutina diaria y buenos mensajes (~15 min)

### 4a) La rutina (~5 min)

```bash
git add .
git commit -m "feat: agregué el título principal"
git push
```

Tres comandos, todos los días, para siempre. Y si el repo ya existe:
`git clone <URL>` con la del botón verde **Code**.

Invitar a un compañero: Settings, Collaborators, Add people. Una línea, es para que
sepan que existe.

### 4b) Los prefijos (~10 min)

| Prefijo | Para qué | Ejemplo |
| :-- | :--- | :--- |
| `feat:` | funcionalidad nueva | `feat: agregué el carrito de compras` |
| `fix:` | corregir un error | `fix: reparé el color del botón` |
| `docs:` | documentación | `docs: actualicé el README` |

**La regla que se llevan:** un commit, una idea. Si el mensaje necesita la palabra
**"y"**, probablemente son dos commits.

---

## Live Coding 3 — Reescribí mensajes de commit (~15 min)

Carpeta: [LC03-reescribi-mensajes-de-commit](LC03-reescribi-mensajes-de-commit)

Los 4 pasos de la slide:

1. Abrí `mensajes.md` y leé la lista de mensajes malos.
2. Reescribí cada uno con un prefijo y en una sola línea.
3. Armá un cambio con dos arreglos distintos y separalo en dos commits con `git add <archivo>`.
4. Mirá el resultado con `git log --oneline`.

Los pasos 1 y 2 se hacen en
[solucion/mensajes.md](LC03-reescribi-mensajes-de-commit/solucion/mensajes.md): leé
`cambios`, `arreglé cosas`, `asdf`, `final final v2`, `subí todo` y que la clase proponga
el reemplazo antes de mostrarlo.

Para el **paso 3** están `menu.html` (tiene un enlace roto: dice `portda.html`) y
`portada.html` (el título quedó pegado a la izquierda). Arreglás los dos y después
commiteás **uno por vez**:

```bash
git add menu.html
git commit -m "fix: corrijo el link roto del menu"
git add portada.html
git commit -m "style: alineo el titulo de la portada"
git log --oneline
```

Salida real:

```
5b24d3c style: alineo el titulo de la portada
19a1f5b fix: corrijo el link roto del menu
d8d5ca5 chore: estado inicial
```

**El contraste que hay que hacer explícito:** si hubieran hecho `git add .` quedaba un
commit solo, con un mensaje que necesita la palabra "y". `git add <archivo>` es cómo se
arma un historial que después se puede leer.

---

## Ejercicio de clase (~10 min de consigna)

Carpeta: [EJERCICIO-tu-primer-repositorio](EJERCICIO-tu-primer-repositorio)

Las 6 consignas del deck, con los comandos escritos en
[solucion/pasos.md](EJERCICIO-tu-primer-repositorio/solucion/pasos.md) y los huecos en
[inicio/pasos.md](EJERCICIO-tu-primer-repositorio/inicio/pasos.md).

**No se hace dentro de la carpeta del ejercicio**: se hace en una carpeta nueva llamada
`mi-primer-repo`. El entregable es el **enlace a su repositorio en GitHub**.

---

## Preguntas y cierre (~10 min)

Las tres del deck:

- ¿En qué se diferencian Git y GitHub?
- ¿Por qué un archivo modificado no queda guardado en el historial hasta que lo commiteás?
- ¿Qué hace `git push -u origin main`?

Y los cinco puntos del cierre: Git es local y GitHub es la nube; un commit es una foto
completa con su hash; tres zonas (heladera, bandeja, repositorio); el flujo diario es
`add`, `commit`, `push`; un buen mensaje lleva prefijo y cuenta qué cambió.

**Próxima clase:** Git avanzado, ramas y colaboración.

---

## Si vas corto de tiempo

En este orden, y suman 25 minutos: de 2h50 a **2h25**.

1. **Acortá el bloque 1 a 15 min** (−10). El gancho, `.git` y Git-no-es-GitHub. Las
   plataformas alternativas y la tabla de ventajas van nombradas al pasar.
2. **Sacá el paso 3 del Live Coding 3** y dejalo en 10 min (−5). Los dos commits
   separados se pueden mandar como tarea; los prefijos ya quedaron en la teoría.
3. **Acortá el bloque 4 a 10 min** (−5) y **preguntas a 5** (−5). Las tres preguntas
   del deck se contestan en el cierre, de corrido.

**No recortes el Live Coding 2.** Es el único donde tipean ellos y es exactamente lo
que después se evalúa en el ejercicio.

## Plan B si falla GitHub

Si se cae la red o alguien no puede crear la cuenta: todo el bloque local funciona sin
internet. `git init`, `add`, `commit`, `log`, `restore` y `diff` no necesitan conexión;
es justo lo que dice la teoría del sistema distribuido, así que el imprevisto sirve de
demostración. El `push` queda como tarea.
