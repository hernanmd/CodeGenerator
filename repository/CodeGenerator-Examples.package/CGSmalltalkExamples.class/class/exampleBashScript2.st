examples
exampleBashScript2

	Smalltalk tools workspace 
		openContents: (
			CGBash new
				addCaseFor: 'myCaseVar' 
				options: { 'caseA' . 'caseB' . 'caseC' };
				generate) 
		label: 'Bash Script' 

