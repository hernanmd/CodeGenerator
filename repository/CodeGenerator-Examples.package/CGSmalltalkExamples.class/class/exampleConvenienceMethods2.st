examples
exampleConvenienceMethods2

	CGStConvenienceMethods new
		setCleanTarget;
		parameterCount: 2;
		targetSelector: #cgConvEx2;
		addReturn;
		targetClassCategory: 'ConvenienceMethodsEx';
		targetClass: #ConvenienceMethodsEx;
		generateMethods.
	self openOnClass: #ConvenienceMethodsEx.
