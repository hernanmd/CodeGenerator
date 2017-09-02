code-generation
generateClassMethods
	" Private - Generate target methods from receiver's selectors "
	
	self sourceString: self generateDS.
	self generateClassMethod.


