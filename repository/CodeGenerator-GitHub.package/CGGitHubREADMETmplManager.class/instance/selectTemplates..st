accessing
selectTemplates: aCollection 
	" Answer a <CGGitHubREADMETemplate> which is currently selected "

	^ aCollection select: [ : sectionName | 
		 self selectedTemplateFromSection: (self templateLocationToUse / (CGGitHubREADME asTemplateSectionName: sectionName)) ].