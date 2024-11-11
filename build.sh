#!/usr/bin/bash

echo "Se borra la carpeta salida y se vuelve a crear"
rm -rf salida
mkdir salida

./index.sh > salida/inicio.html
./pagina1.sh > salida/pagina1.htm
./pagina2.sh > salida/pagina2.htm
./pagina3.sh > salida/pagina3.htm
