examples
exampleTestCreation

	CGSunit new
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: #TestCGSmalltalkExample;
		targetTestCategory: 'CGGeneratedCode';
		generateSetUp: true;
		generateTests.
	Smalltalk tools browser openOnClass: #TestCGSmalltalkExample asClass.
	self inform: 'Done'.		