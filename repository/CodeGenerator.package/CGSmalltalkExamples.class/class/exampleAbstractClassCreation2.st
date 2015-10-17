examples
exampleAbstractClassCreation2
	" Create Abstract Class Pattern example "
	
	CGStAbstractClassPattern uniqueInstance
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #CGExampleAbstractClass2;
		concreteClassesCount: 3;
		concreteClassNamePattern: #CGExampleConcreteClass2;
		operationsCount: 3;
		operationsName: #exampleOperation;
		generateClasses.
	Smalltalk tools browser fullOnClass: #CGExampleAbstractClass2 asClass.		
	self inform: 'Done!'.