examples
exampleSingletonCreation

	CGStSingleton uniqueInstance
		setCleanTarget;
		targetClassCategory: 'SingletonEx1';
		targetClass: #SingletonEx1;
		generateMethods.

	Smalltalk tools browser fullOnClass: #SingletonEx1 asClass.		
	self inform: 'Done'.		