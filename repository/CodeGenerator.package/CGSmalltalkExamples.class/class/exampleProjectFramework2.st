examples
exampleProjectFramework2
	" Generate a ProjectBase subclass with its (Spec) Window "

	CGStProjectFramework new
		setCleanTarget;
		targetClassCategory: 'PFExampleCategory';
		targetSuperclass: #PFStandardProjectWindow;		
		targetClass: #PFExampleWindow;
		applicationClassName: #PFExampleApplicationClass;
		projectClassName: #PFExampleProjectClass;
		title: 'Example Project UI';
		closeAfterCreateProjectSetting: true;
		generateMethods.
	Smalltalk tools browser openOnClass: #PFExampleWindow asClass.
	self inform: 'Done'.