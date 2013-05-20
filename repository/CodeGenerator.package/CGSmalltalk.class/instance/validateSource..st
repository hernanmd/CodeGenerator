code-generation
validateSource: aString
	" Answer a proper String for compilation into a class "
	
	^ self isSmalltalkCode
		ifTrue: [ self validateSelector: aString ]
		ifFalse: [ self validateString: aString ].