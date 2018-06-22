code-generation
generateTests
	" Generate tests methods "

	self 
		generateTestClass: self targetTestClass;
		generateMethods: self inputClass localSelectors;
		generateMethodSetUp;
		generateMethodTearDown.