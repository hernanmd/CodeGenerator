code-generation
addIVars: iVarCollection
	" Add instance variables in iVarCollection and generate accessor (getter and setter) methods "
	
	iVarCollection do: [ : iVar | self addIVar: iVar ]
