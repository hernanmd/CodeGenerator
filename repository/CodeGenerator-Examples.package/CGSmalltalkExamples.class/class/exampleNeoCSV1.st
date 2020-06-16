examples
exampleNeoCSV1

	| csvScript |
	
	csvScript := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		generateReadTemplate.
	self openWorkspaceTitled: 'NeoCSV reader script' contents: csvScript.
