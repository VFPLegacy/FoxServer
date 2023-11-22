&& -------------------------------------------------------- &&
* {CLASS_HEADER}
&& -------------------------------------------------------- &&
#include "src\header\macros.h"
DEFINE CLASS {CLASS_NAME} AS Base OLEPUBLIC
	cHost 		  = "{HOST_NAME}"
	nPort 		  = {PORT}
	oRequest 	  = .NULL.
	oResponse 	= .NULL.
	oJson 		  = .NULL.
	oFoxServer 	= .null.
	oHelper		  = .null.
	cAPIPath	  = ""
	
	PROCEDURE AddControllers
		* {CLASS_ROUTE_CAPTION}
		ROUTE("/hello", "pHello")
		* {CLASS_CONTROLLER_CAPTION}
*!*			CONTROLLER("/productos", CREATEOBJECT("ProductosController"))
	ENDPROC
	
	* {CLASS_ROUTE_IMPLEMENTATION}
	PROCEDURE pHello
		CONTENT_TYPE("application/json")
		CONTENT(GET_JSON_RESPONSE("correcta", .null., "VFP Rocks!"))
	ENDPROC

	*----------------------------------------------------------*
	** HELPER METHODS
	*----------------------------------------------------------*
	Procedure ParseJsonBodyFromRequest
		this.loadJsonFox()
		this.oJson = _Screen.json.parse(GET_BODY())
	EndProc
 ENDDEFINE
