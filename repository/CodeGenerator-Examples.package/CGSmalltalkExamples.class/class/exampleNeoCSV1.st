examples
exampleNeoCSV1

	| res |
	
	res := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		generateReadDoScript.
	self inform: 'Done'.		
	Smalltalk tools workspace 
		openContents: res 
		label: 'NeoCSV reader script'
