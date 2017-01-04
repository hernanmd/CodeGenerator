code-generation
generateMethods

	self cleanTargetMethods.
	self addInstVar: #currentState.	
	self generateMethodHeader.
	self buildTransitionsCode.
	self generateMethod.
	1 to: self transitions size do: [ : i |
		self resetCodeStream.
		self targetSelector: #someMessageSendInstate , i asString.
		self generateMethodHeader.
		self generateMethod. ].