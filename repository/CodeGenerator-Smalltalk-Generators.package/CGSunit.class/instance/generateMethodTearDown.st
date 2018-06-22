code-generation
generateMethodTearDown

	^ self generateTearDown 
		ifTrue: [ self compileSource: 'tearDown
	
	super tearDown.
	self instance.' ]
