# Manipulacion

Listar todo el contenido de un directorio, incluidos archivos y directorios ocultos

    $ ls -a

Listar todo el contenido de un directorio, añadiendo detalles adicionales como los permisos de cada uno de los recursos

    $ ls -l

Listar todo el contenido de un directorio de forma ordenada desde la fecha de la ultima modificacion

    $ ls -t

Imprimir el contenido de un archivo a traves de la terminal

    $ cat <file_name>

Copiar un recurso de un directorio en otro distinto

    $ cp <file_name> <destination_path>

Copiar multiples recursos de un directorio en otro distinto

    $ cp <file_1> <file_2> <destination_path>

Seleccionar multiples recursos de un directorio a la vez a traves del comodi *

    - Copiar todos los recursos de un directorio en otro destino
    
        $ cp * <destination_path>

    - Copiar todos los recursos con una extension especifica de un directorio en otro destino

        $ cp *.txt <destination_path>

    - Copiar todos los recursos que contengan una extension especifica y que inicien con un caracter determinado en otro destino

        $ cp w*.txt <destination_path>

Mover un recurso de un directorio a otro distinto

    $ mv <file_name> <destination_path>

Eliminar un archivo

    $ rm <file_name>

Eliminar un directorio

    $ rm -r <dir_name>