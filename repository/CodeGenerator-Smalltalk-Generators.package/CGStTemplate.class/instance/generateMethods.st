code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	self allInstanceSelectors
		do: [ : sel |
			self sourceString: (self templateSource: sel).
			self generateMethod ]
		displayingProgress: [ : each | each ]