# SABIUMWEB

Este proyecto utiliza ASP clásico y requiere acceso a una base de datos SQL Server
para mostrar su contenido dinámico. De forma predeterminada, el código intentará
conectarse a un servidor interno que probablemente no estará disponible en un
entorno local, por lo que es necesario configurar los datos de conexión antes de
probar el sitio.

## Configuración de la base de datos

1. Copie el archivo [`config/db_config.example.asp`](config/db_config.example.asp)
   a `config/db_config.asp`.
2. Edite los valores de `dbServer`, `dbDB`, `dbUS` y `dbPW` con las credenciales de
   su servidor SQL Server local.

El archivo `config/.gitignore` evita que sus credenciales se agreguen al control
de versiones.

### Variables de entorno

También puede configurar la conexión mediante variables de entorno si prefiere
no crear un archivo adicional. Los nombres reconocidos son:

- `SABIUM_DB_SERVER`
- `SABIUM_DB_DATABASE` o `SABIUM_DB_NAME`
- `SABIUM_DB_USER`
- `SABIUM_DB_PASSWORD` o `SABIUM_DB_PW`

Las variables almacenadas en `Application("<nombre>")` con los mismos nombres
anulan los valores por defecto. Cualquier valor definido por archivo de
configuración o variables sustituye a los valores hardcodeados.

### Errores de conexión

Si la aplicación no puede abrir la conexión, se generará un error con un mensaje
que indica la dirección y la base de datos a la que se intentó conectar. Revise
la configuración descrita arriba en caso de ver este mensaje.
