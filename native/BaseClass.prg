&& -------------------------------------------------------- &&
&& {CLASS_HEADER}
&& -------------------------------------------------------- &&
Define Class Base as Session
	Procedure loadJsonFox
		If Type('_screen.json') == 'U' or Type('_screen.json.version') == 'U'
			Do LocFile("JSONFox", "app")
			_screen.json.lShowErrors = .F.
		EndIf
	EndProc
	
	Procedure cursorToJSON(tcCursor, tbCurrentRow) as memo
		this.loadJsonFox()
		Local lcResult, i
		lcResult = '['
		i = 0
		Select (tcCursor)
		If tbCurrentRow
			Scatter memo name loRow
			lcResult = lcResult + _screen.json.encode(loRow, "", .t., .t.)
		else
			Scan
				Scatter memo name loRow
				i = i + 1
				If i > 1
					lcResult = lcResult + ','
				EndIf
				lcResult = lcResult + _screen.json.encode(loRow, "", .t., .t.)
			EndScan
		EndIf
		lcResult = lcResult + ']'

		Return lcResult
	EndProc
EndDefine
