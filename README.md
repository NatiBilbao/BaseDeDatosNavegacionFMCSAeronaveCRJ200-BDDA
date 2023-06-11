# Base de datos de navegación FMCS para Aeronave CRJ - 200

Este es el repositorio de la base de datos de navegación FMCS (Flight Management Computer System) para la aeronave CRJ-200. Aquí encontrarás todos los archivos y recursos necesarios para implementar y utilizar esta base de datos en tu entorno local.

## Descripción de la entidad y los requisitos

La base de datos de navegación FMCS para la aeronave CRJ-200 es un sistema diseñado para proporcionar información y funcionalidades relacionadas con la navegación y gestión de vuelo. Este sistema se utiliza específicamente en las aeronaves CRJ-200 y es esencial para el correcto funcionamiento y seguimiento de las rutas de vuelo.

Los requisitos para utilizar esta base de datos son los siguientes:

- Tener instalado Docker Desktop en tu máquina local.
- Contar con acceso a internet para descargar los recursos y archivos necesarios.

## Diagrama propuesto de Base de datos

Aquí se presenta un diagrama que representa la estructura propuesta para la base de datos de navegación FMCS:

![Diagrama UML](https://github.com/NatiBilbao/BaseDeDatosNavegacionFMCSAeronaveCRJ200-BDDA/blob/master/UML%20-%20Base%20de%20datos%20de%20navegaci%C3%B3n%20FMCS%20%20para%20aeronave%20CJR-200.png)

El diagrama proporciona una visión general de las tablas y relaciones que componen la base de datos. Esto te ayudará a comprender la estructura y los componentes principales del sistema.

## Requisitos técnicos

Para poder implementar y utilizar la base de datos de navegación FMCS, debes asegurarte de tener los siguientes requisitos técnicos en tu entorno:

Docker Desktop: Asegúrate de tener Docker Desktop instalado en tu máquina. Puedes descargarlo desde https://www.docker.com/products/docker-desktop.

Espacio en disco: Verifica que tienes suficiente espacio en disco para alojar la base de datos y otros recursos necesarios.

Conexión a internet: Asegúrate de tener una conexión a internet estable para poder descargar los archivos y recursos necesarios durante la implementación.

## Cómo levantar localmente

Sigue los pasos a continuación para levantar la base de datos de navegación FMCS localmente en Docker Desktop:

   1. Clona este repositorio en tu máquina local:
    
    git clone https://github.com/tu-usuario/nombre-repositorio.git

   2. Navega al directorio del repositorio clonado:
    
    cd nombre-repositorio

   3. Abre una terminal o línea de comandos en tu sistema operativo y ejecuta el siguiente comando para construir y levantar el contenedor Docker:
    
    docker-compose up -d

   4. Espera a que Docker descargue las imágenes y configure el contenedor. Una vez completado, la base de datos estará lista para su uso.

¡Y eso es todo! Ahora tendrás la base de datos de navegación FMCS para la aeronave CRJ-200 ejecutándose localmente en tu máquina. Puedes acceder a ella a través de las configuraciones de conexión especificadas en el archivo de configuración del contenedor.
