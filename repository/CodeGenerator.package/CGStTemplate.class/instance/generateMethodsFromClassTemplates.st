code-generation
generateMethodsFromClassTemplates

	self allClassSuperchainSelectors
		do: [ : selector |
			selector isUnary
				ifTrue: [ self sourceString: (self class templateSource: selector) ]
				ifFalse: [ self sourceString: (self class templateSource: selector instance: self) ].
			self generateClassMethod ]
		displayingProgress: [ : each | each ].