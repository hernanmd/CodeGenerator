code-formatters
formatSource: aString
	" Answer a proper String for compilation into a class "
	
	^ self isSmalltalkCode
		ifTrue: [ self underscoreSelector: aString ]
		ifFalse: [ self doubleQuote: aString ].