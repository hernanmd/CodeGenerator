examples
exampleConvenienceMethods1

	CGStConvenienceMethods uniqueInstance
		setCleanTarget;
		parameterCount: 1;
		targetSelector: #cgConvEx1;
		targetClassCategory: 'ConvenienceMethodsEx';
		targetClass: #ConvenienceMethodsEx;
		generateMethods.
	Smalltalk tools browser openOnClass: #ConvenienceMethodsEx asClass.
	self inform: 'Done'.