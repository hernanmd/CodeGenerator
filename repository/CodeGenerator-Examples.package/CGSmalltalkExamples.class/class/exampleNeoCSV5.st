examples
exampleNeoCSV5

	CGStNeoCSV new
		targetClass: ModelClass1;
		targetSelector: #someMessage;	
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		headers: #('fieldA' 'fieldB');	
		data: #(120 100);
		generateWriteDoMethod.
	self openOnClass: #ModelClass1.
