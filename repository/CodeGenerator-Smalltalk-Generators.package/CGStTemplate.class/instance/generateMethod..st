code-generation
generateMethod: aSelector
	" Private - Generate a single target method using aSelector "
	
	self sourceString: (self templateSource: aSelector).
	self generateMethod.