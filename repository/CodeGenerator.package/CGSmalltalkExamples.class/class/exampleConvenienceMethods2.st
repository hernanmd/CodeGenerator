examples
exampleConvenienceMethods2

	CGStConvenienceMethods uniqueInstance
		setCleanTarget;
		parameterCount: 2;
		targetSelector: #cgConvEx2;
		addReturn;
		targetClassCategory: 'ConvenienceMethodsEx';
		targetClass: #ConvenienceMethodsEx;
		generateMethods.
	Smalltalk tools browser openOnClass: #ConvenienceMethodsEx asClass.
	self inform: 'Done'.