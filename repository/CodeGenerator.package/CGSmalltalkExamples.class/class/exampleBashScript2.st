examples
exampleBashScript2

	^ CGBash new
		addCaseFor: 'myCaseVar' options: { 'caseA' . 'caseB' . 'caseC' };
		generate.

