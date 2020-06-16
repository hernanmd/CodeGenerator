accessing
collectTemplates: aCollection 
	" Answer a <Collection> of <CGGitHubREADMETemplate> which is currently selected "

	| allTemplates |
	allTemplates := aCollection collect: [ : sectionName | self templatesFor: sectionName ].
	^ (self hasMultipleTemplates: allTemplates)
		ifTrue: [ 
			self informMessage: (self userTextMultipleTemplates: allTemplates).
			self selectTemplates: allTemplates ]
		ifFalse: [ allTemplates gather: #yourself ]
	
		
