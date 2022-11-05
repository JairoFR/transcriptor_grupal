#  Flask: Transcripción de audio a archivo de texto

## Contenido

    Aplicacion web donde puedes realizar transcripciones de audio 
    a un archivo de texto .txt , y asi llevar sus grabaciones creadas 
    en formato WAV, MP4, M4a en un texto, como tambien un video de youtube
    solo  colocando el link. Para ingresar solo debes loguearte y entrar a tu 
    session, para realizar la trancripcion, y esta configurado para realizar 
    solo 5 trancripciones.


![Demostracion](flask_app/static/img/image.gif)  


## **Instalacion y configuracion**

#### Instalar un entorno virtual con  pipenv en forma global (omitir si ya está instalado):      
#### Window:
    pip install pipenv

#### Mac:
    pip3 install pipenv

#### Clona el repositorio del proyecto: 


    $ git clone https://github.com/JairoFR/transcriptor_grupal.git
    $ cd transcriptor_grupal.git
  
####  Instala desde Pipfile los paquetes que vienen configurados: 
    $ pipenv install

####  Activa el shell de Pipenv:
    $ pipenv shell

####  Detiene  el ambiente virtual en la terminal:
    $ exit

####  Cargar el script de la base de datos a MySql Workbench:  

    Ruta :  flask_app\docs\transc_group.sql
 

### Abrir proyecto en un editor de codigo fuente

    1.- Abrir proyecto en visual studio code.
    2.- Ir a Python: select interpreter con  ctrl+shift+p.
    3.- Seleccionar el ambiente virtual creado con el nombre de la carpeta.
    4.- Renombrar archivo .env_ejemplo a .env y agregar datos faltantes para 
        la conexión con la base de datos de MYsql Workbench.
    5.- Instalar requirements.txt
    6.- Abrir nueva terminal y escribir python server.py
