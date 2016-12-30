examples
exampleSpec1

	CGStSpec new
		setCleanTarget;
		targetClass: #SpecModelClass1;
		title: 'Example Spec 1';
		generateMethods.

	Smalltalk tools browser openOnClass: #SpecModelClass1 asClass.
	self inform: 'Done'.		