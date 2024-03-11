#!/bin/bash
# RUTA="$HOME" --HOME es una variable de entorno que almacena la ruta del directorio de inicio del usuario 


RUTA="/home/davix"
#Valido si la ruta existe y si es un directorio (-d)
if [ -d "$RUTA" ]; then #despues del if tengo que poner el ";" o hacer un salto de linea antes del then
	echo "Las ruta: $RUTA existe"
	
	#Verificar permisos de ejecucion
	if [ -x "$RUTA" ]; then
		echo "Tengo permisos de ejecucion sobre la ruta: $RUTA"
	else
		echo "No tengo permisos de ejecucion sobre la ruta: $RUTA"
	fi #Termino los if con el comando "fi"

else
	echo "La ruta: $RUTA no existe"
fi
