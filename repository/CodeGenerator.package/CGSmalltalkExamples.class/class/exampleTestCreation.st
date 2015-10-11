examples
exampleTestCreation

	CGSunit uniqueInstance
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: ModelClass1;
		generateSetUp: true;
		generateTests.
	Smalltalk tools browser fullOnClass: ModelClass1.
	self inform: 'Done'.		