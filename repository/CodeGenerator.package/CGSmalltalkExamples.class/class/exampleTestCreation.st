examples
exampleTestCreation

	CGSunit uniqueInstance
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: #ModelClass1;
		generateSetUp: true;
		generateTests.
	self inform: 'Done'.		