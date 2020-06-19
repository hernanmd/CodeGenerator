initialization
initializeTemplatesDir: aDirectoryName
	" Private - Build templates directory structure "

	aDirectoryName asFileReference ensureCreateDirectory.
	self sections do: [ : sectionName |
		(Array with: (self asTemplateSectionName: sectionName))
			inject: aDirectoryName asFileReference
			into: [ : acc : dir | (acc / dir) asFileReference ensureCreateDirectory ] ].

