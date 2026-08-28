error handling
handleError: exception
	"Handle exception (an <RBRefactoringError>) raised while adding a variable/accessors.
	 A benign 'variable already defined' error is ignored so re-runs are idempotent; any
	 other error is re-raised to the caller."

	(exception messageText includesSubstring: 'its subclasses defines variable')
		ifTrue: [ ^ self ].
	exception pass