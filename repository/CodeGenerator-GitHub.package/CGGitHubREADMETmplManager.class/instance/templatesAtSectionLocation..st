accessing
templatesAtSectionLocation: aFileReference 

	^ [ 
			(aFileReference children collect: #asCGGitHubREADMETemplate).
		]
		on: DirectoryDoesNotExist 
		do: [ : ex |
			self class initializeTemplatesDir: self templatesDir.
			ex retry ]