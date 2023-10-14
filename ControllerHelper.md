# Manual de la Clase ControllerHelper

La clase `ControllerHelper` es una parte fundamental de RESTFox y proporciona diversas funcionalidades para asistir en el desarrollo de APIs RESTful en Visual FoxPro. En este manual, exploraremos los métodos disponibles en esta clase y proporcionaremos ejemplos de cómo utilizarlos.

## Métodos de ControllerHelper

### SetConnectionString(cConnectionString)

El método `SetConnectionString` se utiliza para establecer la cadena de conexión a la base de datos que se utilizará para las operaciones de base de datos en el controlador.

Ejemplo:
```foxpro
oHelper.SetConnectionString("DRIVER={MariaDB ODBC 3.1 Driver};SERVER=localhost;USER=root;PASSWORD=1234;PORT=3309;DATABASE=mi_basededatos")
```

### OpenConnection()

El método `OpenConnection` se utiliza para abrir una conexión a la base de datos utilizando la cadena de conexión previamente establecida.

Ejemplo:
```foxpro
  IF oHelper.OpenConnection()
     && "Conexión abierta exitosamente"
  ELSE
     && "Error al abrir la conexión"
  ENDIF
```

### CloseConnection()

El método `CloseConnection` se utiliza para cerrar la conexión a la base de datos.

Ejemplo:
```foxpro
  oHelper.CloseConnection()
&& "Conexión cerrada"
```

### QueryToJSON()

El método QueryToJSON se utiliza para ejecutar una consulta SQL y devolver el resultado en formato JSON.

Ejemplo:
```foxpro
oHelper.cQuery = "SELECT * FROM productos"
cJsonResult = oHelper.QueryToJSON()
```

### ExecuteQuery()

El método ExecuteQuery se utiliza después de una consulta de inserción, actualización o eliminación para ejecutarla en la base de datos.

Ejemplo:
```foxpro
oHelper.cQuery = "INSERT INTO productos (nombre, precio) VALUES ('Producto1', 10.99)"
IF oHelper.ExecuteQuery()
   && "Registro insertado exitosamente"
ELSE
   && "Error al insertar el registro"
ENDIF
```

### GetLastID()

El método GetLastID se utiliza después de una inserción para obtener el último ID insertado en la tabla.

Ejemplo:
```foxpro
  IF oHelper.ExecuteQuery()
     nLastID = oHelper.GetLastID()
     && "Último ID insertado: " + TRANSFORM(nLastID)
  ELSE
     && "Error al insertar el registro"
  ENDIF
```

### GetExceptionMessage(loException)

El método GetExceptionMessage se utiliza para obtener el mensaje de excepción generado por una operación.

Ejemplo:
```foxpro
  TRY
     // Operación que genera una excepción
  CATCH TO loEx
     cErrorMessage = oHelper.GetExceptionMessage(loEx)
     && "Error: " + cErrorMessage
  ENDTRY
```
Estos son algunos de los métodos más comunes disponibles en la clase ControllerHelper. Puedes utilizarlos para gestionar las operaciones de base de datos y controlar las excepciones en tus controladores.
