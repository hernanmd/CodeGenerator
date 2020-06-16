examples
exampleSpec1

	CGStSpec new
		setCleanTarget;
		targetClass: #SpecModelClass1;
		title: 'Example Spec 1';
		generateMethods.
	self openOnClass: #SpecModelClass1.
	