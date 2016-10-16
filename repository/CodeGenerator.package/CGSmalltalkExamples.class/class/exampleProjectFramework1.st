examples
exampleProjectFramework1
	" Generate a ProjectBase subclass with its (Spec) Window "

	CGStProjectFramework uniqueInstance
		setCleanTarget;
		targetClassCategory: 'PFExampleCategory';
		targetClass: #PFExampleWindow;
		targetSuperclass: #PFProjectDetailsWindow;
		applicationClassName: #PFExampleApplicationClass;
		projectClassName: #PFExampleProjectClass;
		title: 'Example Project UI';
		closeAfterCreateProjectSetting: true;
		generateMethods.
	Smalltalk tools browser fullOnClass: #PFExampleWindow asClass.
	self inform: 'Done'.