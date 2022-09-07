code-generation
generateTests
	" Generate tests methods "

	self 
		generateMethods: self inputClass localSelectors;
		generateMethodSetUp;
		generateMethodTearDown.