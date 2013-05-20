code-generation
generateFor: anObject selector: aSelectorName
	" Write the code "

	self targetSelector: aSelectorName.
	self sourceString: anObject asSourceCode.
	
	self preGenerate.
	self compile.
	self postGenerate.