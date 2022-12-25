# Configuracion del entorno de la linea de comandos

- La linea de comandos es una herramienta indispensable durante el desarrollo de un proyecto
- La linea de comandos permite crear, mover, eliminar, reorganizar, buscar y reemplazar terminos en un proyecto, etc

La linea de comandos puede ser configurada de modo que se puedan crear alias para comandos y crear variables que puedan ser compartidas entre distintos comandos y programas.

## nano

Permite ejecutar un editor de linea de texto integrado en la linea de comandos

    $ nano file_name

A traves del ejemplo anterior visualiza el contenido del archivo pasado como parametro en el editor de texto nano.

El editor de texto nano tambien puede ser abierto sin la necesidad de pasar el nombre de un archivo como parametro

    $ nano

## Perfil bash

El perfil bash es un archivo usado para almacenar configuraciones de entorno de la terminal. Este archivo es accesible desde el editor nano mediante el siguiente comando

    $ nano ~/.bash_profile

Cuando se edita el contenido del archivo bash_profile, es posible añadir comandos que se ejecutan cada vez que una nueva sesion de la terminal ha sido iniciada.

Para activar los cambios realizados en el archivo bash_profile para la sesion actual, es necesario ejecutar el siguiente comando

    $ source ~/.bash_profile

## Alias

El comando alias permite crear atajos del teclado

    $ nano ~/.bash_profile
    alias pd="pwd"
    $ source /.bash_profile

La configuracion anterior permite crear un alias para el comando pwd. Posteriormente se activan los cambios realizados en el perfil bash para utilizar dicho alias en la sesion actual de la terminal

## Variables de entorno

Las variables de entorno son variables que pueden ser utilizadas a traves de los distintos comandos usados en la terminal

    $ nano ~/.bash_profile
    export USER="Martin Wilches"
    $ source ~/.bash_profile

- La linea USER="Martin Wilches" define una variable de entorno llamada USER, cuyo valor sera "Martin Wilches"
- exports hace que la variable este disponible en todas las sesiones iniciadas desde la sesion actual

Las variables de entorno son accedidas antecediando al nombre de la variable el caracter $

    $ echo $USER

### Variable de entorno PS1

Define el estilo del prompt

    $ nano ~/.bash_profile
    export PS1=">> "
    $ source ~/.bash_profile

Al modificar el estilo del prompt, se dejara de visualizar el caracter $ al iniciar cada comando, en su lugar se visualizaran los caracteres >>

### Variable de entorno HOME

Imprime en la consola la ruta del directorio raiz. En la mayoria de los casos el valor de dicha variable de entorno no necesita ser modificado

    $ echo $HOME

### Variable de entorno PATH

Imprime en la consola la lista de los directorios que contienen scripts

    $ echo $PATH

### env

El comando env "Environment" retorna una lista de las distintas variables de entorno a las que puede acceder el usuario actual

    $ env

Es posible utilizar una pipe | para contatenar el comando env al comando grep, para asi visualizar el valor de una variable de entorno especifica

    $ env | grep USER