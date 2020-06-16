examples
exampleConvenienceMethods1

	CGStConvenienceMethods new
		setCleanTarget;
		parameterCount: 1;
		targetSelector: #cgConvEx1;
		targetClassCategory: 'ConvenienceMethodsEx';
		targetClass: #ConvenienceMethodsEx;
		generateMethods.
	self openOnClass: #ConvenienceMethodsEx.
