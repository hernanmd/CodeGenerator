code-generation
addInstanceVariable: iVarName

	self addInstVar: iVarName.
	self addAccessorMethods: iVarName.