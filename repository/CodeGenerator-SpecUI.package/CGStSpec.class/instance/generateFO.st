code-generation
generateFO
	" Generate code String for #initializeWidgets "

	^ (MustacheTemplate on: self templateForInitializeFocus) value: self buildContext.
	