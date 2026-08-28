error handling
handleError: exception of: iVarName in: aClass
	"Handle exception (an <RBRefactoringError>) raised while adding iVarName to aClass. A
	 benign 'already defines variable' error is ignored so re-runs are idempotent; any other
	 error is re-raised. Non-interactive and halt-free (Req 13)."

	(exception messageText includesSubstring: 'its subclasses defines variable')
		ifTrue: [ ^ self ].
	exception pass