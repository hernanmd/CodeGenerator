code-generation
generateBuilders

	CGStHierarchyCreator uniqueInstance
		targetClass: self targetClass;
		targetClassCategory: self targetClassCategory;
		concreteClasses: self builderNames;
		addInstanceVariables: #(#product);		
		generateClasses.
