callbacks
setTemplatesDir: textOrFileReference
	" If textOrFileReference is a FileReference to a valid template directory, then set it to use as the new templates directory "

	textOrFileReference
		ifNil: [ self informMessage: 'Entered text should not be empty' ]
		ifNotNil: [ textOrFileReference asFileReference isDirectory
				ifTrue: [ 
					self readmeGenerator templatesDir: textOrFileReference asFileReference.
					self informMessage: self templatesSummary ]
				ifFalse: [ 
					self informMessage: textOrFileReference asString , ' is not a Directory' ] ]