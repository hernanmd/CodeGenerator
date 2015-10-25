code-generation
generateProductFamilies

	self familyNames do: [ : famNameClass |
		CGStAbstractClassPattern uniqueInstance
			targetClass: famNameClass;
			targetClassCategory: self targetClassCategory;
			concreteClassesCount: self productPartsPerFamilyCount;
			concreteClassNamePattern: famNameClass;
			generateClasses ].
