code-generation
generate
	" Generate NSIS Installer String "

	self dumpToFile: ((MustacheTemplate on: self joinTemplates) value: self buildContext).
	