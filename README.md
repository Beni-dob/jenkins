echo "Descargando la hoja de estilos W3.CSS..."
if ! curl -o "$FOLDER_NAME/$CSS_FILE" "$W3_CSS_URL"; then
    echo "Error: No se pudo descargar W3.CSS. Verifica tu conexión a internet."
    exit 1
fi
echo "Hoja de estilos descargada correctamente."
