code-generation
generateFromInstanceTemplates

	self allInstanceSuperchainSelectors
		do: [ : sel |
			self sourceString: (self templateSource: sel).
			self generateMethod ]
		displayingProgress: [ : each | each ].