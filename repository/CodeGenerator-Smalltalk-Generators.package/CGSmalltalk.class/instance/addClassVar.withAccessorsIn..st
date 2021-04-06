code-generation
addClassVar: iVarName withAccessorsIn: aClass
	" Add iVarName and generate accessor (getter and setter) methods "
	
	self codeTransformer addClassVar: iVarName withAccessorsIn: aClass
