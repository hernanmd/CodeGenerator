accessing
selectedTemplateFromSection: aFileReference 

	^ [ 
		aFileReference entries 
			detect: [ : fileRef | fileRef asCGGitHubREADMETemplate isSelected ]
			ifNone: [ self error: 'Could not find any template in directory ' , aFileReference fullName ] 
		]
		on: DirectoryDoesNotExist 
		do: [ : ex |
			self class initializeTemplatesDir: self templatesDir.
			ex retry ]