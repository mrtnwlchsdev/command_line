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

Obtener las lineas de texto unicas de un archivo

    $ uniq > file_name

Retornar las coincidencias de texto dentro de un archivo

    $ grep word_to_search file_name

    -- El comando grep es case sensitive

    $ grep -i word_to_search file_name

    -- El flag -i permite omitir la caracteristica case sensitive del comando grep

Retornar la ruta del o los archivos que contenga el texto especificado como parametro, adicionando la linea de texto de busqueda

    $ grep -R text_param file_name

Retornar la ruta del o los archivos que contengan el texto especificado como parametro

    $ grep -Rl text_param file_name

Buscar y reemplazar la primera coincidencia de texto en un archivo

    $ sed 's/word_to_replace/new_word/' file_name

    - s correspone a substitucion
    - word_to_replace hace referencia a la palabra que sera buscada dentro del archivo
    - new_word hace referencia a la palabra que se ubicara en el archivo en lugar de word_to_replace

Buscar y reemplazar todas las coincidencias de texto en un archivo

    $ sed 's/word_to_replace/new_word/g' file_name

    -- Los 2 anteriores ejemplos no modifican el contenido del archivo

Buscar y reemplazar todas las coincidencias de texto en un archivo de forma permanente

    $ sed -i 's/word_to_replace/new_word/g' file_name