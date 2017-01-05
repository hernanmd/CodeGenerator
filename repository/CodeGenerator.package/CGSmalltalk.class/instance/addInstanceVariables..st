code-generation
addInstanceVariables: iVarCollection
	" Add instance variables in iVarCollection and generate accessor (getter and setter) methods "
	
	iVarCollection do: [ : iVar | self addInstanceVariable: iVar ]
