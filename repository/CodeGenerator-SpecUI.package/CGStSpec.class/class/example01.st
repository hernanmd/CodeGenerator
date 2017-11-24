examples
example01

	CGStSpec new
		targetClassCategory: 'Cormas-UI';
		targetClassPrefix: 'CMSpec';	
		targetClass: 'EntityAddInterface';
		addIVarsWithAccessors: #('entityName' 'entityElementType' 'toolbar');	
		title: 'Create a kind of Entity';
		generateMethods;
		generateClassMethods.
	Smalltalk tools browser openOnClass: #'CMSpecEntityAddInterface' asClass.		
	self inform: 'Done!'.		