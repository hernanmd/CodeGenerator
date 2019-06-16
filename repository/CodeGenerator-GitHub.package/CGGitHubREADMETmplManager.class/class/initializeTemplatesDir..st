initialization
initializeTemplatesDir: aDirectoryName
	" Private - Build templates directory structure "

	aDirectoryName asFileReference ensureCreateDirectory.
	CGGitHubREADME sections do: [ : sectionName |
		(Array with: (CGGitHubREADME asTemplateSectionName: sectionName))
			inject: aDirectoryName asFileReference
			into: [ : acc : dir | (acc / dir) asFileReference ensureCreateDirectory ] ].

