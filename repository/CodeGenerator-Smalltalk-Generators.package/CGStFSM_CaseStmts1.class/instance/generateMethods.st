code-generation
generateMethods

	self cleanTargetMethods.
	self addInstVar: #currentState.
	self generateMethodHeader.
	self generateTransitionsCode.
	self codeTransformer postGenerateMethod.
