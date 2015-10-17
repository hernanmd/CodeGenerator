examples
exampleBuilderPattern1
	" Create Builder Pattern example "
	
	CGStBuilderPattern uniqueInstance
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #CGExampleBuilderClass;
		concreteSubclassesCount: 3;
		concreteSubclassName: #CGExampleConcreteClass;
		productClassCount: 3;
		productClassName: #CGExampleProductClass;
		directorClassName: #CGExampleDirector;
		generateClasses.
	Smalltalk tools browser fullOnClass: #CGExampleBuilderClass asClass.		
	self inform: 'Done!'.