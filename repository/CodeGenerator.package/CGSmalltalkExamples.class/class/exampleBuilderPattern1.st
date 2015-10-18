examples
exampleBuilderPattern1
	" Create Builder Pattern example "
	
	CGStBuilderPattern uniqueInstance
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		" Abstract Builder class name (ex: UIBuilder) "
		targetClass: #CGExampleAbstractBuilder;
		" How many builders? "
		concreteClassesCount: 3;
		" Class name prefix for all builder subclasses  (ex: MotifBuilder, CUABuilder, WindowsBuilder) "
		concreteClassNamePattern: #CGExampleConcreteBuilder;
		" Class name prefix for all products families (ex: Motif, CUA, Windows) "
		productFamilyClassName: #CGExampleFamily;
		" How many product parts? "
		productClassesCount: 3;
		" Class name prefix for all product parts (MotifRadioButtonPart, CUARadioButtonPart, WindowsRadioButtonPar)"
		productPartClassName: #CGExampleProductPart;
		directorClassName: #CGExampleDirector;
		generateClasses.
	Smalltalk tools browser fullOnClass: #CGExampleBuilderClass asClass.		
	self inform: 'Done!'.