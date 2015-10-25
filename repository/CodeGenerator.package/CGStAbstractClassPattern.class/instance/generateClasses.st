code-generation
generateClasses
	" Generate concrete subclasses. Assumes superclass is already created "

	1 to: self concreteClassesCount 
		do: [ : index | self generateClassNamed: self concreteClassNamePattern , index asString superclass: self targetClass ]