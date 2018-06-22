code-generation
generateBuilders

	CGStHierarchyCreator new
		shouldCleanTarget: self shouldCleanTarget;
		targetClass: self targetClass;
		targetClassCategory: self targetClassCategory;
		concreteClasses: self builderNames;
		addIVars: #(#product);		
		generateClasses.
