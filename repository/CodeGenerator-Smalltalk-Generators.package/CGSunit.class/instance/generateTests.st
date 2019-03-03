code-generation
generateTests
	" Generate tests methods "

	self 
		generateTestClass: self targetClass;
		generateMethods: self inputClass localSelectors;
		generateMethodSetUp;
		generateMethodTearDown.