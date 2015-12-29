code-generation
generateOperations
	" Generate concrete subclasses. Assumes superclass is already created "

	1 to: self operationsCount do: [ : index | 
		self targetSelector: self operationsName , index asString.
		self generateAbstractMethod ].
	self targetClass allSubclassesDo: [ : subc |
		self targetClass: subc.
		1 to: self operationsCount do: [ : index | 
			self targetSelector: self operationsName , index asString.
			self generateConcreteMethod ] ]