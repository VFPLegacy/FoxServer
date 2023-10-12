&& -------------------------------------------------------- &&
&& $(MACRO_TITLE)
&& -------------------------------------------------------- &&
#define QUERY		TEXT TO this.oHelper.cQuery NOSHOW PRETEXT 15 TEXTMERGE
#define ENDQUERY	ENDTEXT
#define HELPER		this.oHelper
#define	WRITELOG	this.oHelper.Log
#define RESPONSE	this.oResponse
#define ROUTE		this.oFoxServer.addRoute
#define CONTROLLER	this.oFoxServer.addController

&& -------------------------------------------------------- &&
* $(CLASS_TITLE)
&& -------------------------------------------------------- &&
DEFINE CLASS $(CLASS_NAME) AS SESSION OLEPUBLIC
	cHost 		= "$(HOST)"
	nPort 		= $(PORT)
	oRequest 	= .NULL.
	oResponse 	= .NULL.
	oJson 		= .NULL.
	oFoxServer 	= .null.
	oHelper		= .null.
	
	PROCEDURE AddControllers
		* $(ROUTES_TITLE)
		ROUTE("/hello", "pHello")
		* $(CONTROLLER_TITLE)
		*CONTROLLER("/productos", CREATEOBJECT("ProductosController"))
	ENDPROC
	
	* $(ROUTES_LOGIC)
	PROCEDURE pHello
		RESPONSE.cContentType = "application/json"
		RESPONSE.cContent = '{"estado": "correcta", "data": null, "mensaje": "Hello World!"}'
	ENDPROC

ENDDEFINE

&& -------------------------------------------------------- &&
&& CONTROLADOR DE EJEMPLO PARA PRODUCTOS
&& -------------------------------------------------------- &&
*!*	DEFINE CLASS ProductosController AS SESSION
*!*		oHelper  = .null.
*!*		cData 	 = ""
*!*		cMessage = ""
*!*		bOk 	 = .t.
*!*		nLastID	 = 0
*!*		

*!*		FUNCTION BeforeExecute as Boolean
*!*			HELPER.SetConnectionString("DRIVER={MariaDB ODBC 3.1 Driver};SERVER=localhost;USER=root;PASSWORD=1234;PORT=3309;DATABASE=mi_basededatos")
*!*			Return HELPER.OpenConnection()
*!*		ENDFUNC
*!*		
*!*		PROCEDURE AfterExecute as VOID
*!*			HELPER.CloseConnection()
*!*		ENDPROC

*!*		PROCEDURE GetAll(toQueryParameters)
*!*			Try
*!*				QUERY
*!*					SELECT * FROM productos
*!*				ENDQUERY
*!*				If toQueryParameters.Exists('order')
*!*					HELPER.cQuery = HELPER.cQuery + " ORDER BY " + toQueryParameters.Get('order')
*!*				EndIf
*!*				this.cData = HELPER.QueryToJSON()
*!*				WRITELOG("Data: " + this.cData)
*!*			Catch to loEx
*!*				this.bOk = .f.
*!*				this.cMessage = HELPER.GetExceptionMessage(loEx)
*!*			EndTry 
*!*		ENDPROC	
*!*		
*!*		PROCEDURE GetOne(tvIdentifier)
*!*			Try
*!*				QUERY
*!*					SELECT * FROM productos WHERE id = <<tvIdentifier>>
*!*				ENDQUERY
*!*				this.cData = HELPER.QueryToJSON()
*!*				If this.cData == 'null'
*!*					this.cMessage = "No existe un producto con el id proporcionado."
*!*				EndIf
*!*			Catch to loEx
*!*				this.bOk = .f.
*!*				this.cMessage = HELPER.GetExceptionMessage(loEx)
*!*			EndTry
*!*		ENDPROC
*!*		
*!*		PROCEDURE Create(toBody)
*!*			Try
*!*				QUERY
*!*					INSERT INTO productos
*!*					(nombre, descripcion, precio, stock) values
*!*					('<<toBody.nombre>>', '<<toBody.descripcion>>', <<toBody.precio>>, <<toBody.stock>>)
*!*				ENDQUERY
*!*				If HELPER.ExecuteQuery()
*!*					this.nLastID = HELPER.GetLastID()
*!*				Else
*!*					this.bOk = .f.
*!*					this.cMessage = "No se pudo insertar el registro."
*!*				EndIf
*!*			Catch to loEx
*!*				this.bOk = .f.
*!*				this.cMessage = HELPER.GetExceptionMessage(loEx)
*!*			EndTry
*!*		ENDPROC
*!*		
*!*		PROCEDURE Update(tvIdentifier, toBody)
*!*			Try
*!*				QUERY
*!*					UPDATE productos SET
*!*					nombre = '<<toBody.nombre>>',
*!*					descripcion = '<<toBody.descripcion>>',
*!*					precio = <<toBody.precio>>,
*!*					stock = <<toBody.stock>>
*!*					WHERE id = <<tvIdentifier>>
*!*				ENDQUERY
*!*				If !HELPER.ExecuteQuery()
*!*					this.bOk = .f.
*!*					this.cMessage = "No se actualizar los datos."
*!*				EndIf
*!*			Catch to loEx
*!*				this.bOk = .f.
*!*				this.cMessage = HELPER.GetExceptionMessage(loEx)
*!*			EndTry
*!*		ENDPROC
*!*		
*!*		PROCEDURE Delete(tvIdentifier)
*!*			Try
*!*				QUERY
*!*					DELETE FROM productos WHERE id = <<tvIdentifier>>
*!*				ENDQUERY
*!*				If !HELPER.ExecuteQuery()
*!*					this.bOk = .f.
*!*					this.cMessage = "No se pudo eliminar el registro."
*!*				EndIf
*!*			Catch to loEx
*!*				this.bOk = .f.
*!*				this.cMessage = HELPER.GetExceptionMessage(loEx)
*!*			EndTry
*!*		ENDPROC
*!*	ENDDEFINE