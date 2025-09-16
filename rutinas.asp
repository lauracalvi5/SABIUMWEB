<%

' Parametros de conexion


'''Const dbServer="127.0.0.1,1433"
'''Const dbDB="plope311_sabium"
'''Const dbUS="plope311_sabium"
'''Const dbPW="galolola2930@+sql"

Dim dbServer, dbDB, dbUS, dbPW, dbConnectionString
dbServer = "10.70.80.45"
dbDB = "SAB_DEV"
dbUS = "sab"
dbPW = "ususab"
dbConnectionString = ""

LoadDatabaseConfigOverrides
ApplyRuntimeConfigOverrides


Sub LoadDatabaseConfigOverrides()
    Dim configPath, fso, configStream, configScript
    On Error Resume Next
    configPath = Server.MapPath("config/db_config.asp")
    If Err.Number <> 0 Then
        Err.Clear
        On Error GoTo 0
        Exit Sub
    End If

    Set fso = Server.CreateObject("Scripting.FileSystemObject")
    If Err.Number <> 0 Then
        Err.Clear
        On Error GoTo 0
        Exit Sub
    End If

    If fso.FileExists(configPath) Then
        Set configStream = fso.OpenTextFile(configPath, 1, False)
        If Err.Number = 0 Then
            configScript = configStream.ReadAll()
            configStream.Close()
            ExecuteGlobal configScript
            If Err.Number <> 0 Then
                Err.Clear
            End If
        Else
            Err.Clear
        End If
        Set configStream = Nothing
    End If

    Set fso = Nothing
    On Error GoTo 0
End Sub

Sub ApplyRuntimeConfigOverrides()
    Call OverrideConfigValue(dbServer, "SABIUM_DB_SERVER")
    Call OverrideConfigValue(dbDB, "SABIUM_DB_DATABASE")
    Call OverrideConfigValue(dbDB, "SABIUM_DB_NAME")
    Call OverrideConfigValue(dbUS, "SABIUM_DB_USER")
    Call OverrideConfigValue(dbPW, "SABIUM_DB_PASSWORD")
    Call OverrideConfigValue(dbPW, "SABIUM_DB_PW")
    Call OverrideConfigValue(dbConnectionString, "SABIUM_DB_CONNECTION_STRING")
    Call OverrideConfigValue(dbConnectionString, "SABIUM_DB_CONNSTRING")
End Sub

Sub OverrideConfigValue(ByRef destination, ByVal key)
    Dim value
    value = ResolveApplicationSetting(key)
    If Len(value) = 0 Then
        value = ResolveEnvironmentValue(key)
    End If
    If Len(value) > 0 Then
        destination = value
    End If
End Sub

Function ResolveApplicationSetting(key)
    Dim value
    On Error Resume Next
    value = Application(key)
    If Err.Number <> 0 Then
        Err.Clear
        value = ""
    End If
    On Error GoTo 0
    If IsNull(value) Or IsEmpty(value) Then
        ResolveApplicationSetting = ""
    Else
        ResolveApplicationSetting = Trim(CStr(value))
    End If
End Function

Function ResolveEnvironmentValue(varName)
    Dim shell, rawValue
    rawValue = ""
    On Error Resume Next
    Set shell = Server.CreateObject("WScript.Shell")
    If Err.Number = 0 Then
        rawValue = shell.ExpandEnvironmentStrings("%" & varName & "%")
        If rawValue = "%" & varName & "%" Then
            rawValue = ""
        End If
    Else
        Err.Clear
    End If
    If Not shell Is Nothing Then
        Set shell = Nothing
    End If
    On Error GoTo 0
    If IsNull(rawValue) Or IsEmpty(rawValue) Then
        ResolveEnvironmentValue = ""

    Else
        ResolveEnvironmentValue = Trim(CStr(rawValue))
    End If
End Function

'---- CursorTypeEnum Values ----
Const adOpenForwardOnly = 0
Const adOpenKeyset = 1
Const adOpenDynamic = 2
Const adOpenStatic = 3

'---- CursorOptionEnum Values ----
Const adHoldRecords = &H00000100
Const adMovePrevious = &H00000200
Const adAddNew = &H01000400
Const adDelete = &H01000800
Const adUpdate = &H01008000
Const adBookmark = &H00002000
Const adApproxPosition = &H00004000
Const adUpdateBatch = &H00010000
Const adResync = &H00020000
Const adNotify = &H00040000

'---- LockTypeEnum Values ----
Const adLockReadOnly = 1
Const adLockPessimistic = 2
Const adLockOptimistic = 3
Const adLockBatchOptimistic = 4

Function BuildConnectionString()
    Dim trimmedCustom
    trimmedCustom = Trim(CStr(dbConnectionString))
    If Len(trimmedCustom) > 0 Then
        BuildConnectionString = trimmedCustom
    Else
        BuildConnectionString = "Provider=SQLOLEDB;SERVER=" _
                                & dbServer _
                                & ";Database=" & dbDB _
                                & ";UID=" & dbUS _
                                & ";PWD=" & dbPW
    End If
End Function

Function Conectar_ADM()
    Dim db
    Dim connectionString
    Dim connectionError
    Dim usingCustomConnection

    Set db = Server.CreateObject("ADODB.Connection")

    connectionString = BuildConnectionString()
    usingCustomConnection = Len(Trim(CStr(dbConnectionString))) > 0

    If Len(connectionString) = 0 Then
        Err.Raise vbObjectError + 1000, "Conectar_ADM", _
                  "No se definió una cadena de conexión válida."
    End If

    On Error Resume Next
    db.Open connectionString
    If Err.Number <> 0 Then
        If usingCustomConnection Then
            connectionError = "No fue posible conectarse utilizando la cadena de conexión " _
                              & "configurada en config/db_config.asp o en las variables de entorno SABIUM_DB_*."
        Else
            connectionError = "No fue posible conectarse a la base de datos """ & dbDB & """ " _
                              & "en el servidor """ & dbServer & """. " _
                              & "Verifique el archivo config/db_config.asp o las variables de entorno SABIUM_DB_*."
        End If
        If Len(Err.Description) > 0 Then
            connectionError = connectionError & " Detalles: " & Err.Description
        End If
        Err.Clear
        On Error GoTo 0
        Set db = Nothing
        Err.Raise vbObjectError + 1000, "Conectar_ADM", connectionError
    End If
    On Error GoTo 0

    Set Conectar_ADM = db
End Function
%>
<% FUNCTION  nohaysolonumeros(cadena)
		dim strTexto, arrayCaracteres
		strTexto=cadena
		if LEN(strTexto)=0 then strTexto="-"
		strNumeros ="0123456789"
		For numero=1 to LEN(strTexto)
			char=MID(strTexto,numero,1)
			x=InStr(strNumeros,char)
			If x=0 then 
				nohaysolonumeros = TRUE
				Exit Function
			End if
		Next
		nohaysolonumeros = FALSE
END FUNCTION %>

<%
Function generacolores(longitudcadena2)
' Generador de claves aleatorias
	Dim numdecaracteres2
	Dim salida2
	' Definicion del array
	Dim char_array2
	char_array2 = Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", _
	"A", "B", "C", "D", "E", "F")
	Randomize()
	Do While Len(salida2) < longitudcadena2
		salida2 = salida2 & char_array2(Int(16 * Rnd()))
	Loop
	' establecemos el valor del resultado a devolver
	generacolores = salida2
End Function
%>

<%
Function generaclave(longituddeclave)
' Generador de claves aleatorias
	Dim numdecaracteres
	Dim salida
	' Definicion del array
	Dim char_array
	char_array = Array("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", _
	"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", _
	"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", _
	"U", "V", "W", "X", "Y", "Z",_
	"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", _
	"k", "l", "m", "n", "o", "p", "q", "r", "s", "t", _
	"u", "v", "w", "x", "y", "z")
	Randomize()
	Do While Len(salida) < longituddeclave
		salida = salida & char_array(Int(62 * Rnd()))
	Loop
	' establecemos el valor del resultado a devolver
	generaclave = salida
End Function
%>
<%
Function ZeroString(Var_String, CantidadCeros)
	ZeroString = Var_String
	DO While Len(ZeroString) < (CantidadCeros)
		ZeroString = "0"& ZeroString
	Loop
End Function
%>
<% 
Function traer_usuario(dni)
Set Conn2 = Conectar_ADM()
strSQL="SELECT * FROM administracion WHERE aprobado=1 AND HashDNI='"&dni&"'"
set rs=Conn2.Execute (strSQL)
if rs.eof then 
	response.write "Usuario An&oacute;nimo"
	exit function
else
	response.write rs("empleado")
	exit function
end if
end function %>

<% 
Function traer_foto_usuario(dni)
Set Conn2 = Conectar_ADM()
strSQL="SELECT * FROM administracion WHERE aprobado=1 AND HashDNI='"&dni&"'"
set rs=Conn2.Execute (strSQL)
if rs.eof then 
	exit function
else
	if rs("foto")="" then
		response.write "sin_foto.jpg"
		exit function
	else
		response.write rs("foto")
		exit function
	end if
end if
end function %>

<%

function eliminaSQLinyeccion(strpararevisar)
	  ListaNegra = Array("dir","--", ";", "/*", "*/", "@@","select","update","insert","upload","from","union","like","join"," and"," or","delete","set","create","drop","into","table","where","values","order","having","xp","xp_cmdshell","cmdshell","cmd","shell","declare","exec","script","varchar","execute","1=1?","true","false","char","null","substring","dbo","limit","sysobjects","begin","waitfor","declare","if","exists","pg_sleep","collate","admin","ping","xp_","convert","latin","pass","chr","hex","#","‘","'",";","(",")","$","%","-1?","=",",","+","*","?","&","{","}","|","!","'","<",">","""","alert","%E27","+--+","img src=","xml","like","%26","%27","%3D","%28","%29","->","&","’","=","(",")","%3D","%28","%29","%2C","%2F","%2B","wait for delay","delay","wait","ltrim")
	  If (IsEmpty(strpararevisar)) Then
	    Exit Function
	  ElseIf (StrComp(strpararevisar, "") = 0) Then
	    Exit Function
	  End If
	  For Each s in ListaNegra
			strpararevisar=Replace(strpararevisar,s,"",1,-1,1)
	  Next
	  eliminaSQLinyeccion=strpararevisar
end function

function remover_html(str_texto)
    Dim nPos1
    Dim nPos2
    nPos1 = InStr(str_texto, "<") 
    Do While nPos1 > 0 
        nPos2 = InStr(nPos1 + 1, str_texto, ">") 
        If nPos2 > 0 Then 
            str_texto = Left(str_texto, nPos1 - 1) & Mid(str_texto, nPos2 + 1) 
        Else 
            Exit Do 
        End If 
        nPos1 = InStr(str_texto, "<") 
    Loop  
    remover_html = str_texto 
end function 

Function TimeToMinutes(timeStr)
	Dim parts, hr, mn
	parts = Split(timeStr, ":")
	If UBound(parts) = 1 Then
		hr = CInt(parts(0))
		mn = CInt(parts(1))
		TimeToMinutes = (hr * 60) + mn
	Else
		TimeToMinutes = -1 ' Indicar error o formato no válido
	End If
End Function	
%>
