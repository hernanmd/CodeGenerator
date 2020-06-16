code-generation
generate
	" Generate NSIS Installer String "

	self dumpToNSIFile: ((MustacheTemplate on: self joinTemplates) value: self buildContext).

	