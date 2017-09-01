code-generation
buildContext
	" Private - Build Mustache context "

	^ Dictionary new
		at: 'specInstVars' put: self buildInstVarsCtx;
		yourself.
	