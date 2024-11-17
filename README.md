# jenkins
#!/bin/bash

# Nombre de la carpeta donde se construirá el sitio
FOLDER_NAME="sitio_web"

# Crear la carpeta si no existe
mkdir -p "$FOLDER_NAME"

# Crear el archivo index.html
cat > "$FOLDER_NAME/index.html" <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 20px; }
        nav a { margin: 10px; text-decoration: none; color: blue; }
        nav a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <h1>Bienvenido al Sitio Web</h1>
    <p>Explora las páginas disponibles:</p>
    <nav>
        <a href="pagina1.html">Página 1</a>
        <a href="pagina2.html">Página 2</a>
        <a href="pagina3.html">Página 3</a>
    </nav>
</body>
</html>
EOL

# Crear las páginas adicionales con contenido básico
for i in 1 2 3; do
    cat > "$FOLDER_NAME/pagina$i.html" <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página $i</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 20px; }
        nav a { margin: 10px; text-decoration: none; color: blue; }
        nav a:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <h1>Esta es la Página $i</h1>
    <p>Contenido de la Página $i.</p>
    <nav>
        <a href="index.html">Volver al Índice</a>
    </nav>
</body>
</html>
EOL
done

echo "El sitio web se ha construido en la carpeta '$FOLDER_NAME'."
