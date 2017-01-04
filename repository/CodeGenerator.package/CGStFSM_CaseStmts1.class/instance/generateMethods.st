accessing
generateMethods

	self cleanTargetMethods.
	self addInstVar: #currentState.
	self generateMethodHeader.
	self buildTransitionsCode.
	self generateMethod.