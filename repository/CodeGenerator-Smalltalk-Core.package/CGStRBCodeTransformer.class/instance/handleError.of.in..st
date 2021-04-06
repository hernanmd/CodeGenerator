code-generation
handleError: exception of: iVarName in: aClass 

	(exception messageText includesSubstring: 'its subclasses defines variable')
		ifFalse: [ 
			(self confirm: 'Remove global variable?')
				ifTrue: [ Smalltalk globals removeKey: iVarName capitalized ifAbsent: [  ] ].
			self halt.
			exception pass ]
