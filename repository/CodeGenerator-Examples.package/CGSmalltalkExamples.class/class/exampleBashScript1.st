examples
exampleBashScript1

	| code |
	
	code := CGBash new
		addSheBang;
		addHasParametersValidation;
		generate.
	Smalltalk tools workspace 
		openContents: code 
		label: 'Bash Script'
