examples
exampleTestCreation

	CGSunit uniqueInstance
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: #TestCGSmalltalkExample;
		targetTestCategory: 'CGGeneratedCode';
		generateSetUp: true;
		generateTests.
	Smalltalk tools browser fullOnClass: ModelClass1.
	self inform: 'Done'.		