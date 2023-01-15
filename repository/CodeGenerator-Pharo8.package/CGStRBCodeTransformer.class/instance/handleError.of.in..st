code-generation
handleError: exception of: iVarName in: aClass

	(exception messageText includesSubstring:
		 'its subclasses defines variable') ifTrue: [ ^ self ].
	(self confirm: 'Remove global variable?') ifTrue: [ 
		Smalltalk globals removeKey: iVarName capitalized ifAbsent: [  ] ].
	self halt.
	exception pass