examples
exampleAbstractClassCreation1
	" Create Abstract Class Pattern example "
	
	CGStAbstractClassPattern new
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #CGExampleAbstractClass;
		concreteClassesCount: 5;
		concreteClassNamePattern: #CGExampleConcreteClass;
		generateClasses.
	self openOnClass: #CGExampleAbstractClass.	
