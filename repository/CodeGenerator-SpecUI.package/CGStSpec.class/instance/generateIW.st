code-generation
generateIW
	" Generate code String for #initializeWidgets "

	^ (MustacheTemplate on: self templateForInitializeWidgets) value: self buildContext.
	