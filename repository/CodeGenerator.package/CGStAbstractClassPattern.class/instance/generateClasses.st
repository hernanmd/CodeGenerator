code-generation
generateClasses
	" Generate concrete subclasses. Assumes superclass is already created "

	1 to: self concreteSubclassesCount do: [ : index |
		self generateClass: self concreteSubclassName , index asString superclass: self targetClass ]