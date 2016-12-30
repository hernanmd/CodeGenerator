examples
exampleAbstractClassCreation2
	" Create Abstract Class Pattern example "
	
	CGStAbstractClassPattern new
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #CGExampleAbstractClass2;
		concreteClassesCount: 3;
		concreteClassNamePattern: #CGExampleConcreteClass2;
		generateClasses;
		operationsCount: 3;
		operationsName: #exampleOperation;
		generateOperations.
	Smalltalk tools browser openOnClass: #CGExampleAbstractClass2 asClass.		
	self inform: 'Done!'.