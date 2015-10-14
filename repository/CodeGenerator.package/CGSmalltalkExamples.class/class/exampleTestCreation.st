examples
exampleTestCreation

	CGSunit uniqueInstance
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: #TestCGSmalltalkExample;
		targetTestCategory: 'CGGeneratedCode';
		generateSetUp: true;
		generateTests.
	Smalltalk tools browser fullOnClass: #TestCGSmalltalkExample asClass.
	self inform: 'Done'.		