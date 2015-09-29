code-generation-rb
addInstanceVariable: iVarName
	" Add instance variable iVarName and generate accessor (getter and setter) methods "

	self addInstVar: iVarName.
	self addAccessorMethods: iVarName.