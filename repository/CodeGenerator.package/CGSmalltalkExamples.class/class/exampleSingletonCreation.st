examples
exampleSingletonCreation

	CGStSingleton new
		setCleanTarget;
		targetClassCategory: 'SingletonEx1';
		targetClass: #SingletonEx1;
		generateMethods.

	Smalltalk tools browser openOnClass: #SingletonEx1 asClass.		
	self inform: 'Done'.		