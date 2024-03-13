#!/bin/bash

# creo funcion
contar_archivos ()
{
#cuento archivos y directorios en el directorio actual
#ls para listar archivos y directorios 
#con el pipe | hago que el stdout de ls sea el stdin para wc -l
#wc(es para contar) -l(el -l indica que se cuentan lineas)
#totalArchivos=$(ls | wc -l)

#ls para listar ** -p para agregar / al final del nombre de cada directorio
#con el pipe | llega el stdout de ls -p a grep como stdin
#grep busca en lo que llego al agregarle -v busca por la negativa es decir los archivos que no contengan / que es lo que se agrego al momento de hacer el ls por poner el -p
totalArchivos=$(ls -p | grep -v /| wc -l)
echo "El directorio actual contiene: $totalArchivos archivos. "
}

contar_archivos
