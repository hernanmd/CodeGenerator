examples
exampleConvenienceMethods1

	CGStConvenienceMethods uniqueInstance
		setCleanTarget;
		parameterCount: 0;
		targetSelector: #cgConvEx1;
		targetClassCategory: 'ConvenienceMethodsEx';
		targetClass: #ConvenienceMethodsEx1;
		generateMethods.
	Smalltalk tools browser fullOnClass: #ConvenienceMethodsEx1 asClass.
	self inform: 'Done'.