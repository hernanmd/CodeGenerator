examples
exampleNeoCSV3

	CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		targetClass: ModelClass1;
		targetSelector: #someMessage;
		actionBlock: [ : row | row first ];
		generateReadDoMethod.
	self openOnClass: #ModelClass1.	
