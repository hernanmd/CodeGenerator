private
findSelector: codeString
	" Answer a <String> with the selector in codeString "
	
	^ Smalltalk compiler parseSelector: codeString