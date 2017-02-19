code-generation
generateMethods

	self cleanTargetMethods.
	self addInstVar: #currentState.	
	self generateMethodHeader.
	self generateTransitionsCode.
	self codeTransformer postGenerateMethod.
	0 to: self transitions size - 1 do: [ : i |
		self resetCodeStream.
		self targetSelector: #someMessageSendInstate , i asString.
		self generateMethodHeader.
		self generateMethod. ].