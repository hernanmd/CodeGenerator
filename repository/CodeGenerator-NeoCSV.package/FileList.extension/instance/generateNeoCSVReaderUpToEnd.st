*CodeGenerator-NeoCSV
generateNeoCSVReaderUpToEnd
	" Private - Generate code with the contents of my selected file in a new workspace "
	
	| csvScript |
	
	csvScript := CGStNeoCSV new
		fullPath: self reference fullName;
		addSeparator: self cgSelectDelimiter;
		skipHeaderCount: self cgSelectSkipHeaders asNumber;
		generateReadUpToEndTemplate.
	Smalltalk tools workspace 
		openContents: csvScript 
		label: 'Workspace from ', self reference basename.