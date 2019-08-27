code-generation
generateIP
	" Generate code String for #initializePresenter "

	^ (MustacheTemplate on: self templateForInitializePresenter) value: self buildContext
	