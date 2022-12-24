# El comando sed permite buscar y reemplazar coincidencias de texto en un archivo

# Buscar y reemplazar la primera coincidencia de texto en un archivo especificado
sed 's/word_to_replace/new_word/' file_name

# s :: Sustitucion
# word_to_replace :: Palabra que sera reemplazada dentro del archivo especificado
# new_word :: Palabra que reemplazara a word_to_replace dentro del archivo especificado

# Buscar y reemplazar todas las coincidencias de texto en un archivo especificado
sed 's/word_to_replace/new_word/' file_name

# El comando sed no modifica el contenido del archivo original
# Mediante el flag -i se indica que el contenido original del archivo especificado sera permanentemente modificado
sed -i 's/word_to_replace/' file_name