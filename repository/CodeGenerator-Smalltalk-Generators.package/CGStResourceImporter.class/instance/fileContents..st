utility
fileContents: aPath
	" Answer a String with the contents of the file located at aPath "
	
	" To enable when moved to Grease 	
	( self isBinaryAt: aPath )
		ifTrue: [ ^ self error: 'File is binary ' , aPath asString ] "
	
	^ self platform
		contentsOfFile: aPath
		binary: false