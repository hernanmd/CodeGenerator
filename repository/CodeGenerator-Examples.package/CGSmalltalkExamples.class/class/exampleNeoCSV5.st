examples
exampleNeoCSV5

	| res |
	
	res := CGStNeoCSV new
		targetClass: ModelClass1;
		targetSelector: #someMessage;	
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		headers: #('fieldA' 'fieldB');	
		data: #(120 100);
		generateWriteDoMethod.
	self inform: 'Done'.		
	Smalltalk tools browser openOnClass: #ModelClass1 asClass.		
