examples
example01

	CGTravisCI new
		baselineString: 'CommonUtils';
		directoryString: 'repository';
		testingPackages: #('CommonUtils');
		coveragePackages: #('CommonUtils');
		generate.
