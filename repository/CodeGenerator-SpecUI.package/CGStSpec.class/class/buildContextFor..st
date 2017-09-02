code-generation
buildContextFor: aClass
	" Private - Build Mustache context "

	^ Dictionary new
		at: 'defaultSpecInstVarsCtx' put: (self buildDefaultSpecInstVarsCtx: aClass);
		yourself.
