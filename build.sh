#!/bin/bash
CSS_FILE="w3.css"

mkdir -p "webs"

if [[ -f "webs/$CSS_FILE" ]]; then
    echo "La hoja de estilos W3.CSS ya está descargada."
else
    echo "Descargando la hoja de estilos W3.CSS..."
    if ! curl -o "webs/$CSS_FILE" "https://www.w3schools.com/w3css/4/w4.css"; then
        echo "Error: No se pudo descargar W3.CSS. Verifica tu conexión a internet."
        exit 1
    fi
    echo "Hoja de estilos descargada correctamente."
fi


cat > "webs/index.html" <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w4.css">
    
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

for i in 1 2 3; do
    cat > "webs/pagina$i.html" <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página $i</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w4.css">
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

echo "El sitio web se ha construido en la carpeta 'webs'."
