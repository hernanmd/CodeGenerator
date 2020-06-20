initialization
setTemplatesDir: text
	" If text is a FileReference to a valid template directory, then set it to use as the new templates directory "
	
	text notNil 
		ifTrue: [ 
			text asFileReference isDirectory
				ifTrue: [ 
					self readmeGenerator templatesDir: text asFileReference.
					self informMessage: self templatesSummary ]
				ifFalse: [ self informMessage: text asString , ' is not a Directory' ] ]
		ifFalse: [ 
			self informMessage: 'Entered text should not be empty' ]