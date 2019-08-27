code-generation
generateFO
	" Generate code String for #initializeFocus "

	^ (MustacheTemplate on: self templateForInitializeFocus) value: self buildContext.
	