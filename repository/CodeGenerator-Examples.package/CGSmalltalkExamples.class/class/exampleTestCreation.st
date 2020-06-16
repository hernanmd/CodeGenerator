examples
exampleTestCreation

	CGSunit new
		setCleanTarget;
		inputClass: CGSmalltalk;
		targetTestClass: #TestCGSmalltalkExample;
		targetTestCategory: 'CGGeneratedCode';
		generateSetUp: true;
		generate.
	self openOnClass: #TestCGSmalltalkExample.
