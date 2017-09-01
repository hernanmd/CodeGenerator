code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	super generateMethods.
	self sourceString: self generateIW.
	self generateMethod.
