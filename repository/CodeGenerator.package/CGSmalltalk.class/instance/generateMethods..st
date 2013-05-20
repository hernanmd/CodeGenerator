code-generation
generateMethods: aSelectorCollection
	" Private - Generate target methods from aSelectorCollection"
	
	aSelectorCollection do: [: sel |
		self targetSelector: sel.
		self sourceString: String empty.
		self generateMethod ]