#include "src\header\macros.h"
Set Procedure To "src\prg\BaseClass.prg" Additive
Define Class {CLASS_NAME} As Base OlePublic
	cHost = "{HOST_NAME}"
	nPort = {PORT}
	oRequest = .Null.
	oResponse = .Null.
	oJson = .Null.
	oFoxServer = .Null.
	oHelper = .Null.
	cAPIPath = ""
	Procedure AddControllers
		* {CLASS_ROUTE_CAPTION}
		ROUTE("/hello", "pHello")
		* {CLASS_CONTROLLER_CAPTION}
		*!*			CONTROLLER("/productos", CREATEOBJECT("ProductosController"))
	Endproc
	* {CLASS_ROUTE_IMPLEMENTATION}
	Procedure pHello
		CONTENT_TYPE("application/json")
		CONTENT(GET_JSON_RESPONSE("correcta", .Null., "VFP Rocks!"))
	Endproc
	*----------------------------------------------------------*
	** HELPER METHODS
	*----------------------------------------------------------*
	Procedure ParseJsonBodyFromRequest
		This.loadJsonFox()
		This.oJson = _Screen.json.parse(GET_BODY())
	Endproc
Enddefine
