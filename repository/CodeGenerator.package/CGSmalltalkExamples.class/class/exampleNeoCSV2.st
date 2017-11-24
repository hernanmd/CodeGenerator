examples
exampleNeoCSV2

	| res |
	
	res := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		actionBlock: [ : row | Transcript show: row first; cr ];
		generateReadDoScript.
	self inform: 'Done'.		
	Smalltalk tools workspace 
		openContents: res 
		label: 'NeoCSV reader script'
