' Copie este archivo como config/db_config.asp y actualice los valores
' para apuntar a su servidor SQL Server local.
'
' Ejemplo:
' dbServer = "127.0.0.1,1433"
' dbDB = "SAB_DEV"
' dbUS = "usuario"
' dbPW = "contraseña"
'
' Descomente y actualice los valores siguientes según su entorno.
'dbServer = "127.0.0.1,1433"
'dbDB = "SAB_DEV"
'dbUS = "sa"
'dbPW = "su_password"
'
' Si necesita otro motor de base de datos puede definir una cadena de
' conexión personalizada. Cuando se especifica `dbConnectionString` se
' ignoran los valores anteriores.
'
'' Ejemplo para MySQL utilizando el controlador ODBC 8.0:
'' dbConnectionString = "Driver={MySQL ODBC 8.0 ANSI Driver};Server=127.0.0.1;Port=3306;Database=SAB_DEV;Uid=usuario;Pwd=contraseña;Option=3;"
