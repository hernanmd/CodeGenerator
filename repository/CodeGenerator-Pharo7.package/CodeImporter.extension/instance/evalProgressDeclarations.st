*CodeGenerator-Pharo7
evalProgressDeclarations
	"Evaluates the declarations from the text in the file and answers the last result"

	| value |
	self parseChunks.
	self codeDeclarations 
		do: [ :declaration |
			requestor ifNotNil: [ requestor contents: declaration contents ].
			value := declaration importFor: requestor logSource: false ]
		displayingProgress: 'Importing declarations...'.
	self flushChangesFile.
	^ value