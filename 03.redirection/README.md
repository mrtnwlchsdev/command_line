# Redireccion

Redireccionar una entrada estandar en la linea de comandos a un archivo

    $ echo 'Hello World' > file_name

Imprimir en la linea de comandos el contenido de un archivo

    $ cat file_name

Sobreescribir el contenido de un archivo con la salida estandar de otro archivo distinto

    $ cat file_name > file_name2

Redireccionar una salida estandar en la la linea de comandos a un archivo, sin sobreescribir el contenido existente

    $ echo 'Hello World' >> file_name

Canalizar la salida estandar del comando de la izquierda y pasarla como entrada estandar del comando de la derecha

    $ cat file_name | wc

    -- El comando wc cuenta las palabras, lineas y caracteres de un archivo

Multiples caracteres | pueden ser encadenados juntos

    $ cat file_name | wc | cat > file_name2

    - La salida estandar del primer comando es canalizada al segundo comando y posteriormente redireccionada como entrada estandar del tercer comando, el cual la utiliza como entrada estandar para redireccionarla a un nuevo archivo

Ordenar alfabeticamente la entrada estandar de un archivo sin modificar su contenido original

    $ sort > file_name

    - La entrada estandar anterior puede ser pasada como salida estandar a un nuevo archivo

    $ cat file_name | sort > file_name2

Obtener las lineas de texto unicas de un archivo si estas estan adyacentes

    $ uniq > file_name