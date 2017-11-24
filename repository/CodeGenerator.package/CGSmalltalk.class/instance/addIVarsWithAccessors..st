code-generation
addIVarsWithAccessors: iVarCollection
	" Add instance variables in iVarCollection and generate accessor (getter and setter) methods "
	
	iVarCollection do: [ : iVar | self codeTransformer addIVarWithAccessors: iVar ]
