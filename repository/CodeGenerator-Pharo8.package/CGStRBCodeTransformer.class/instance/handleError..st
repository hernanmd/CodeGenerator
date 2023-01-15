code-generation
handleError: exception

	(exception messageText includesSubstring:
		 'its subclasses defines variable') ifTrue: [ ^ self ].
	self halt.
	exception pass