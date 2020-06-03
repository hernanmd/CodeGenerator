*CodeGenerator-Pharo8
evalProgressDeclarations
	"Evaluates the declarations from the text in the file and answers the last result"

	| value |
	self parseChunks.
	self codeDeclarations 
		do: [ :declaration | value := declaration importFor: nil logSource: false ]
		displayingProgress: 'Importing declarations...'.
	self flushChangesFile.
	^ value