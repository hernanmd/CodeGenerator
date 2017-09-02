code-generation
generateDS
	" Generate code String for #defaultSpec "

	^ (MustacheTemplate on: self class templateForDefaultSpec) value: (self class buildContextFor: self targetClass).
	