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
	self openOnClass: #CGExampleAbstractClass2.	