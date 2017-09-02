code-generation
buildContext
	" Private - Build Mustache context "

	^ Dictionary new
		at: 'specInstVarsIW' put: self buildInstVarsCtxIW;
		at: 'specInstVarsIP' put: self buildInstVarsCtxIP;
		at: 'specInstVarsFO' put: self buildInstVarsCtxFO;
		yourself.
	