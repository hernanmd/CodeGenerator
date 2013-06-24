private
findSelector: codeString
	" Answer a <String> with the selector in codeString "
	
	^ Parser new parseSelector: codeString