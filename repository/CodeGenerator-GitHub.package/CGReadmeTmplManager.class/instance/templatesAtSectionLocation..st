accessing
templatesAtSectionLocation: aFileReference 
	" Answer a <Collection> with all templates found in aFileReference (directory). Creates the directory if it doesn't exist "

	^ [ 
			(aFileReference children collect: #asCGReadmeTemplate).
		]
		on: DirectoryDoesNotExist 
		do: [ : ex |
			self class initializeTemplatesDir: self templatesDir.
			ex retry ]