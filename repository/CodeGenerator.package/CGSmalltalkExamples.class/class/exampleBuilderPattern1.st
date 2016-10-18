examples
exampleBuilderPattern1
	" Create Builder Pattern example "
	
	CGStBuilderPattern uniqueInstance
		setCleanTarget;
		targetClassCategory: 'CGGeneratedCode-Core';
		" Abstract Builder class name (ex: UIBuilder) "
		targetClass: #CGExCarBuilder;
		productNames: #('CGExFordCar' 'CGExBMWCar' 'CGExHondaCar');
		builderNames: #('CGExFordBuilder' 'CGExBMWBuilder' 'CGExHondaBuilder');
		familyNames: #('CGExCarEngine' 'CGExCarBody');
		" How many product parts per family ? "
		productPartsPerFamilyCount: 3;
		directorClassName: #CGExCarAssembler;
		generateClasses.
	Smalltalk tools browser openOnClass: #CGExCarBuilder asClass.		
	self inform: 'Done!'.