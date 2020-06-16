accessing
templatesFor: aString 
	" Answer a <Collection> of <CGGitHubREADMETemplate> which is currently selected "

	^ self templatesAtSectionLocation: (self sectionLocationFor: aString)
		
