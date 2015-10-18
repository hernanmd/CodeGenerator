code-generation
generateProductFamilies

	CGStAbstractClassPattern uniqueInstance
		targetClass: self productFamilyClassName;
		targetClassCategory: self targetClassCategory;
		concreteClassesCount: self productClassesCount;
		concreteClassNamePattern: self productPartClassName;	
		generateClasses.
