examples
exampleBuilderPattern1
	" Create Builder Pattern example "
	
	CGStBuilderPattern uniqueInstance
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		" Abstract Builder class name "
		targetClass: #CGExampleAbstractBuilder;
		" How many builders? "
		concreteClassesCount: 3;
		" Class name prefix for all builder subclasses "
		concreteClassNamePattern: #CGExampleConcreteBuilder;
		" How many product parts? "
		productClassesCount: 3;
		" Class name prefix for all product parts "
		productClassName: #CGExampleProductPart;
		directorClassName: #CGExampleDirector;
		generateClasses.
	Smalltalk tools browser fullOnClass: #CGExampleBuilderClass asClass.		
	self inform: 'Done!'.