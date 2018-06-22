code-generation
generateMethodsFromInstanceTemplates

	self allInstanceSuperchainSelectors
		do: [ : sel |
			self sourceString: (self templateSource: sel).
			self generateMethod ]
		displayingProgress: [ : each | each ].