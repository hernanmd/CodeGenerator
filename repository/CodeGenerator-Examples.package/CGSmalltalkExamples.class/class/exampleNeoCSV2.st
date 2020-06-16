examples
exampleNeoCSV2

	| csvScript |
	csvScript := CGStNeoCSV new
		fullPath: 'test1.csv';
		addSeparator: Character tab;
		actionBlock: [ : row | Transcript show: row first; cr ];
		generateReadTemplate.
	self openWorkspaceTitled: 'NeoCSV reader script' contents: csvScript.

