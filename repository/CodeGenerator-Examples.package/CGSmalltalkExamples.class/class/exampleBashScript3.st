examples
exampleBashScript3
	" Example configuring settings before generation "
	
	| code |
	code := CGBash new
		filenameId: 'input_file.csv';
		fieldSeparator: ',';
		addColumnCounter;
		generate.
	Smalltalk tools workspace 
		openContents: code 
		label: 'Bash Script'

