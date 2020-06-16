examples
exampleProjectFramework1
	" Generate a ProjectBase subclass with its (Spec) Window "

	CGStProjectFramework new
		setCleanTarget;
		targetClassCategory: 'PFExampleCategory';
		targetSuperclass: #PFProjectDetailsWindow;
		targetClass: #PFExampleWindow;
		applicationClassName: #PFExampleApplicationClass;
		projectClassName: #PFExampleProjectClass;
		title: 'Example Project UI';
		closeAfterCreateProjectSetting: true;
		generateMethods.
	self openOnClass: #PFExampleWindow.