examples
exampleSingletonCreation

	CGStSingleton new
		setCleanTarget;
		targetClassCategory: 'SingletonEx1';
		targetClass: #SingletonEx1;
		generateMethods.
	self openOnClass: #SingletonEx1.
	