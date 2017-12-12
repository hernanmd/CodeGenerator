code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	super generateMethods.
	self sourceString: self generateIW.
	self generateMethod.
	self sourceString: self generateIP.
	self generateMethod.
	self sourceString: self generateFO.
	self generateMethod.	

