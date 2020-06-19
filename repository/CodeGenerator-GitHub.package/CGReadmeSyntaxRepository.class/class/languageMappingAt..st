accessing
languageMappingAt: syntaxName
		
	^ self languageMappings 
		at: syntaxName 
		ifAbsent: [ self error: 'No such syntax is available' ]