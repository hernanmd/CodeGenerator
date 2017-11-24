code-generation
addIVarWithMVAccessors: iVarName typeName: typeName 
	" Add iVarName and generate multivalued accessor (getter and setter) methods "
	
	self codeTransformer 
		addIVarWithMVAccessors: iVarName 
		typeName: typeName

