accessing
syntaxSheetFor: syntaxName
	" Answer a <String> representing a cheat sheet for syntaxName "

	^ self perform: (self languageMappingAt: syntaxName)
		