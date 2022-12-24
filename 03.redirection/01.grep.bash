# El comando grep permite retornar coincidencias de texto

# Retornar el nombre del archivo y la(s) linea(s) de texto donde se ubica la coincidencia de texto
grep -R word_to_search file_name

# Retornar el nombre del archivo y la(s) linea(s) de texto donde se ubica la coincidencia de texto en el directorio actual
grep -R word_to_search .

# Retornar el nombre del archivo donde se ubica la coincidencia de texto
grep -Rl word_to_serch file_name

# El comando grep es case sensitive, con lo cual los strings Artic y arctic seran evaluados como valores distintos
# El flag -i permite omitir la busqueda case sensitive
grep -i -R word_to_search .