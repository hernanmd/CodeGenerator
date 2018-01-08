code-formatters
formatSource: aString
	" Answer a proper String for compilation into a class "
	
	^ self isSmalltalkCode
		ifTrue: [ aString withoutUnderscores ]
		ifFalse: [ aString surroundedBySingleQuotes ].