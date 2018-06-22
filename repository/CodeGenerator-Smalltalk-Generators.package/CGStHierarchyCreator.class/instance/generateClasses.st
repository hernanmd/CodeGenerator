code-generation
generateClasses
	" Generate concrete subclasses. Assumes superclass is already created "

	self concreteClasses 
		do: [ : className | self generateClassNamed: className superclass: self targetClass ]
		displayingProgress: [ : className | className asString ]