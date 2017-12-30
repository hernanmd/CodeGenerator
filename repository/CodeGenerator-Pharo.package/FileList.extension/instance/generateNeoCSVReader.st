*CodeGenerator-Pharo
generateNeoCSVReader
	" Private - Generate code with the contents of my selected file in a new workspace "
	
	| csvScript |
	
	csvScript := CGStNeoCSV new
		fullPath: self reference fullName;
		addSeparator: self cgSelectDelimiter;
		actionBlock: self cgSelectReadingBlock;
		skipHeaderCount: self cgSelectSkipHeaders asNumber;
		perform: self cgSelectReadingMethod.
	Smalltalk tools workspace 
		openContents: csvScript 
		label: 'Workspace from ', self reference basename