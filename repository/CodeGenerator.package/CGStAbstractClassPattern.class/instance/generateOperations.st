code-generation
generateOperations
	" Generate concrete subclasses. Assumes superclass is already created "

	1 to: self operationsCount do: [ : index | 
		| mthSelector |
		mthSelector := self operationsName , index asString.		
		self generateAbstractMethod: mthSelector.
		self generateConcreteMethod: mthSelector ]