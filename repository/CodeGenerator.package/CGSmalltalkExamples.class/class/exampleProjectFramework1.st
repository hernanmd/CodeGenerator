examples
exampleProjectFramework1
	" Generate a ProjectBase subclass with its (Spec) Window "

	CGStProjectFramework uniqueInstance
		setCleanTarget;
		targetSuperclass: #PFProjectDetailsWindow;
		targetClassCategory: 'PFExampleCategory';
		targetClass: #PFExampleWindow;
		applicationClassName: #PFExampleApplicationClass;
		projectClassName: #PFExampleProjectClass;
		title: 'Example Project UI';
		closeAfterCreateProjectSetting: true;
		generateMethods.
	Smalltalk tools browser openOnClass: #PFExampleWindow asClass.
	self inform: 'Done'.