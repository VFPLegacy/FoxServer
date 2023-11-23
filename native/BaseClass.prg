Define Class Base As Session
	Procedure loadJsonFox
		If Type('_screen.json') == 'U' Or Type('_screen.json.version') == 'U'
			Do Locfile("JSONFox", "app")
			_Screen.json.lShowErrors = .F.
		Endif
	Endproc
	Procedure cursorToJSON(tcCursor, tbCurrentRow) As Memo
		This.loadJsonFox()
		Local lcResult, i
		lcResult = '['
		i = 0
		Select (tcCursor)
		If tbCurrentRow
			Scatter Memo Name loRow
			lcResult = lcResult + _Screen.json.encode(loRow, "", .T., .T.)
		Else
			Scan
				Scatter Memo Name loRow
				i = i + 1
				If i > 1
					lcResult = lcResult + ','
				Endif
				lcResult = lcResult + _Screen.json.encode(loRow, "", .T., .T.)
			Endscan
		Endif
		lcResult = lcResult + ']'
		Return lcResult
	Endproc
Enddefine