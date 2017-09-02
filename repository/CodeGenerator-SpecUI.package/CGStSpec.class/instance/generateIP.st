code-generation
generateIP
	" Generate code String for #initializeWidgets "

	^ (MustacheTemplate on: self templateForInitializePresenter) value: self buildContext
	