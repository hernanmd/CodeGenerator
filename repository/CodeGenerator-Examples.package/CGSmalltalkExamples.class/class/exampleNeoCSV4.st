examples
exampleNeoCSV4

	| res |
	
	res := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		headers: #('fieldA' 'fieldB');
		generateWriteDoScript.
	self inform: 'Done'.		
	Smalltalk tools workspace 
		openContents: res 
		label: 'NeoCSV writer script'
