examples
exampleBashScript1

	| res |
	
	res := CGBash new
		addSheBang;
		addHasParametersValidation;
		generate.
	Smalltalk tools workspace openContents: res label: 'Bash Script'
