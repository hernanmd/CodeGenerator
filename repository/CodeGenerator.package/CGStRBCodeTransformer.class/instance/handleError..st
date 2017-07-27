code-generation
handleError: exception

	(exception messageText includesSubstring: 'its subclasses defines variable')
		ifFalse: [ self halt ]
