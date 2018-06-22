code-generation
addIVar: iVarName withAccessorsIn: aClass
	" Add iVarName and generate accessor (getter and setter) methods "
	
	self codeTransformer addIVar: iVarName withAccessorsIn: aClass
