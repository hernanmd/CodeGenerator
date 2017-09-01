code-generation
generateDefaultSpec
	" Generate code String for #initializeWidgets "

	^ (MustacheTemplate on: self templateForDefaultSpec) value: self buildContext.
	