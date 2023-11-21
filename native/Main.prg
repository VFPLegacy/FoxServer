&& -------------------------------------------------------- &&
* <(_screen.oHelper.oLanguage.Translate("_6Q80XDL46"))>
&& -------------------------------------------------------- &&
DEFINE CLASS <(lcClassName)> AS Base OLEPUBLIC
	cHost 		  = "<(ALLTRIM(loService.cHost))>"
	nPort 		  = <(loService.nPort)>
	oRequest 	  = .NULL.
	oResponse 	= .NULL.
	oJson 		  = .NULL.
	oFoxServer 	= .null.
	oHelper		  = .null.
	cAPIPath	  = ""
	
	PROCEDURE AddControllers
		* <(_screen.oHelper.oLanguage.Translate("_6Q80XFXE0"))>
		ROUTE("/hello", "pHello")
		* <(_screen.oHelper.oLanguage.Translate("_6Q91CY4IV"))>
*!*			CONTROLLER("/productos", CREATEOBJECT("ProductosController"))
	ENDPROC
	
	* <(_screen.oHelper.oLanguage.Translate("_6Q80XGUMG"))>
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
