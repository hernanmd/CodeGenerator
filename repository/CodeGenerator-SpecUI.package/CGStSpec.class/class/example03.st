examples
example03

	CGStSpec new
		targetClassCategory: 'CodeGenerator-GitHub';
		targetClassPrefix: 'CG';
		targetClass: 'GitHubREADME_UI';
		addIVarsWithAccessors: #('repositoryName' 'descriptionText' 'installationText' 'stInstExpr' 'devInstExpr' 'usageNotes' 'usageText' 'badges');	
		title: 'GitHub README.md Generator';
		generateMethods;
		generateClassMethods.
	Smalltalk tools browser openOnClass: #CGReadmeUI asClass.		
	self inform: 'Done!'.		