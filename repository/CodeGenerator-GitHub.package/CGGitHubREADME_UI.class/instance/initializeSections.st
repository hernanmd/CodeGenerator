initialization
initializeSections

	CGGitHubREADME sectionTitleText do: [ : sectionTitle |
		self ghTextSections at: sectionTitle put: '' ].
	
	CGGitHubREADME sectionTitleLists do: [ : sectionTitle |
		self ghListSections at: sectionTitle put: '' ].
	
