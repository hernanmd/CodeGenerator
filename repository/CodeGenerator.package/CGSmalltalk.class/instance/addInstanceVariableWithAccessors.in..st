code-generation
addInstanceVariableWithAccessors: iVarName in: aClass
	" Add iVarName and generate accessor (getter and setter) methods "
	
	self codeTransformer addInstanceVariableWithAccessors: iVarName in: aClass