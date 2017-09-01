examples
example02

	CGStSpec new
		targetClassCategory: 'Cormas-UI';
		targetClassPrefix: 'CMSpec';	
		targetClass: 'EditAttributes';
		addInstanceVariablesWithAccessors: #('superclassesAttributesTable' 'sAttributesLabel' 'targetAttributesTable' 'tAttributesLabel');	
		title: 'Attributes';
		generateMethods;
		generateClassMethods.
	Smalltalk tools browser openOnClass: #'CMSpecEditAttributes' asClass.		
	self inform: 'Done!'.		