code-generation
generateFor: anObject selector: aSelector
	" Write the code for anObject in aSelector "

	self targetSelector: aSelector.
	self sourceString: anObject asSourceCode.
	
	self preGenerate.
	self compileCodeStream.
	self postGenerate.