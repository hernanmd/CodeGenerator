examples
exampleSingletonCreation

	CGStSingleton uniqueInstance
		setCleanTarget;
		targetClassCategory: 'SingletonEx1';
		targetClass: #SingletonEx1;
		generateMethods.
	self inform: 'Done'.		