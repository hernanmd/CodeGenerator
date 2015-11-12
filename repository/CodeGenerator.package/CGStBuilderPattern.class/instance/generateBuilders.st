code-generation
generateBuilders

	CGStHierarchyCreator uniqueInstance
		shouldCleanTarget: self shouldCleanTarget;
		targetClass: self targetClass;
		targetClassCategory: self targetClassCategory;
		concreteClasses: self builderNames;
		addInstanceVariables: #(#product);		
		generateClasses.
