code-generation
generateMethodSetUp

	^ self generateSetUp 
		ifTrue: [ self 
						compileSource: 'setUp

	super setUp.
	self instance: self newInstance.
']

