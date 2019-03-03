code-generation
generate
	" Generate test instance variables and methods "

	self 
		generateTests;
		addIVarWithMVAccessors: 'instance'		