code-generation
buildContext
	" Private - Build Mustache context "

	^ Dictionary new
		at: 'defaultSpecInstVars' put: self buildDefaultSpecInstVarsCtx;
		yourself.
