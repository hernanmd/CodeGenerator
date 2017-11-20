*CodeGenerator-Pharo
generateNeoCSVReaderUpToEnd
	" Private - Generate code with the contents of my selected file in a new workspace "
	
	| csvScript |
	
	csvScript := CGStNeoCSV new
		fullPath: self reference fullName;
		addSeparator: self cgSelectDelimiter;
		skipHeaderCount: self cgSelectSkipHeaders asNumber;
		generateReadUpToEndScript.
	Smalltalk tools workspace 
		openContents: csvScript 
		label: 'Workspace from ', self reference basename