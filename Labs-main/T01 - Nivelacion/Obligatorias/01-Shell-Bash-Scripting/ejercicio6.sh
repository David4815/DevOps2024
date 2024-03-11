#!/bin/bash

# Solicitar al usuario una ruta
read -p "Ingrese una ruta: " RUTA

# Verificar si la ruta es un directorio
if [ -d "$RUTA" ]; then
    echo "La ruta: $RUTA es un directorio"
# Verificar si la ruta es un archivo regular
elif [ -f "$RUTA" ]; then
    echo "La ruta: $RUTA es un archivo regular"
# En caso contrario, la ruta es otro tipo de archivo
else
    echo "La ruta: $RUTA es otro tipo de archivo"
fi

# Ejecutar ls -l sobre la ruta solicitada
ls -l "$RUTA"