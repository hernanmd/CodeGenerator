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
	Smalltalk tools browser openOnClass: #CGExampleAbstractClass asClass.		
	self inform: 'Done!'.