# Sistema de Inventario 
“ADQUISICION DE SOFTWARE; USO COMUNICACION, COORDINACION Y COLABORACION; VERSION MULTIUSUARIO; TIPO DE LICENCIA FULL, PARA REGISTRAR EL INVENTARIO FISICO DE ITEMS PARA LA DIRECCION DE GOBIERNO ELECTRONICO DE MODERNIZACION DE LA GESTION, SMAF”
 - Documentación

Este proyecto consiste en el diseño de una base de datos para un sistema de inventario para gobernacion de Santa Cruz, Secretaria municipal de administracion y finanzas. Proporciona una estructura para almacenar información relacionada con proveedores, tipos de items, empleados, ambientes, equipos, items, inventario y las relaciones entre ellos.

## Requerimientos

- Docker Desktop: Debes tener Docker Desktop instalado en tu sistema operativo Windows.
- Archivo de creación de la base de datos: Contiene las instrucciones SQL para crear las tablas y los datos ficticios.

## Instalación y Uso

1. Clona o descarga este repositorio en tu máquina local.

2. Asegúrate de tener Docker Desktop en ejecución.

3. Abre una ventana de comandos o terminal en el directorio raíz del proyecto.

4. Ejecuta el siguiente comando para iniciar el contenedor:

docker-compose up -d

Esto creará y ejecutará el contenedor MySQL con la base de datos.

5. Una vez que el contenedor esté en ejecución, puedes conectarte a la base de datos utilizando una herramienta de administración de MySQL o ejecutando comandos SQL desde una ventana de comandos o terminal.

6. Para detener y eliminar el contenedor cuando hayas terminado, ejecuta el siguiente comando:

docker-compose down


## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

- `sql.yml`: Archivo de composición de Docker para crear y configurar el contenedor MySQL.
- `init.sql`: Archivo SQL con las instrucciones para crear las tablas y los datos ficticios.

## Entidades

La base de datos está compuesta por las siguientes entidades:

- Proveedores: Almacena información sobre los proveedores, como su identificador, nombre, dirección y teléfono.
- Tipos: Guarda los distintos tipos de items, junto con su descripción y el identificador del proveedor asociado.
- Empleados: Contiene información de los empleados, incluyendo su identificador, nombre y cargo.
- Ambiente: Almacena los ambientes, con su identificador, nombre y el identificador del empleado a cargo.
- Equipos: Guarda los equipos disponibles, con su identificador y nombre.
- Equipo_Empleado: Establece la relación entre los equipos y los empleados, utilizando los identificadores correspondientes.
- Items: Almacena los distintos items del inventario, con su identificador, nombre, descripción, precio, fechas de alta y baja, y el código del tipo de item.
- Inventario: Registra los inventarios realizados, con su identificador, fecha de inicio, fecha de finalización, identificador del equipo de trabajo y del ambiente asociado.
- Items_Inventario: Establece la relación entre los items y los inventarios, junto con la cantidad de cada item en un inventario determinado.



