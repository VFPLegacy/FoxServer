# Documentación de la Clase Principal

La clase principal de RESTFox es la base de tu proyecto de API RESTful en Visual FoxPro. En esta documentación, exploraremos sus propiedades y proporcionaremos ejemplos para entender su funcionalidad.

## Propiedades de la Clase Principal

### `cHost`

- **Descripción**: La propiedad `cHost` define la dirección IP o el nombre de dominio del servidor en el que se ejecutará la API.

- **Ejemplo**:
```foxpro
  cHost = "127.0.0.1"
```

### `nPort`

- **Descripción**: La propiedad nPort define el número de puerto en el que la API escuchará las solicitudes.

- **Ejemplo**:
```foxpro
  nPort = 8080
```

### `cAPIPath`
- **Descripción**: La propiedad **cAPIPath** define la ruta base de tu API. Esta propiedad es importante para organizar tus recursos y endpoints. Una URL típica consta de tres partes: el dominio, el API path y el endpoint.
  - **Dominio**: Es la dirección IP o el nombre de dominio del servidor, definido en `cHost`.
  - **API Path**: Es la propiedad `cAPIPath`. Define la ruta base de tu API.
  - **Endpoint**: Representa recursos específicos dentro de tu API.

- **Ejemplo**:
```foxpro
  cAPIPath = "/api/v1"
```

En este ejemplo, el dominio podría ser "http://127.0.0.1", el API path sería "/api/v1" y el endpoint se agregaría en las rutas de tus controladores.

## Ejemplo de Uso
```foxpro
  * Crear una instancia de la clase principal
  oAPI = CREATEOBJECT("BaseController_6qg155ze5")
  
  * Establecer la dirección IP o el nombre de dominio del servidor
  oAPI.cHost = "127.0.0.1"
  
  * Definir el número de puerto
  oAPI.nPort = 8080
  
  * Establecer la ruta base del API
  oAPI.cAPIPath = "/api/v1"
```

En este ejemplo, hemos creado una instancia de la clase principal, establecido el **`cHost`** en "127.0.0.1", el **`nPort`** en 8080 y el cAPIPath en "/api/v1". Esta configuración define dónde estará disponible tu API y cómo se estructurarán las URLs de tus recursos y endpoints.

Recuerda que el dominio y el endpoint se agregarán en las rutas de tus controladores.
