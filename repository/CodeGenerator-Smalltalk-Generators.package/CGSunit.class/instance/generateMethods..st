code-generation
generateMethods: aSelectorCollection
	" Private - Generate target methods from aSelectorCollection"
	
	(self selectorsToTest: aSelectorCollection)
		do: [ : sel |
			self targetSelector: (self selectorMapperAt: sel) asSymbol.
			self targetBody: (self templateSource: sel).
			self generateMethod ]
		displayingProgress: [ : each | each asString ]
