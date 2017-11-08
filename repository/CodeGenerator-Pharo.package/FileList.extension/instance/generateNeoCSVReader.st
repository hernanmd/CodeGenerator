*CodeGenerator-Pharo
generateNeoCSVReader
	" Private - Generate code with the contents of my selected file in a new workspace "
	
	| csvScript |
	
	self halt.
	csvScript := CGStNeoCSV new
		fullPath: self reference;
		addSeparator: self cgSelectDelimiter;
		block: [ : row | Transcript show: row first; cr ];
		generateReadDoScript.
	Smalltalk tools workspace 
		openContents: csvScript 
		label: 'Workspace from ', self reference basename