examples
exampleNeoCSV3

	| res |
	
	res := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		targetClass: ModelClass1;
		targetSelector: #someMessage;
		actionBlock: [ : row | row first ];
		generateReadDoMethod.
	self inform: 'Done'.		
	Smalltalk tools browser openOnClass: #ModelClass1 asClass.		
