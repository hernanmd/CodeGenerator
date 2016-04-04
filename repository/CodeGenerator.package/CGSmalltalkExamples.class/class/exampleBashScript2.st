examples
exampleBashScript2

	^ CGBash uniqueInstance
		addCaseFor: 'myCaseVar' options: { 'caseA' . 'caseB' . 'caseC' };
		generate.

