#!/usr/bin/bash

./cabecera.sh "Página de inicio"
echo '<div>'
./navegacion.sh
cat <<EOF
</div>
<h1>Ejemplode de página de inicio</h1>
<p>Esta es la página de inico.</p>
EOF



./pie.sh
