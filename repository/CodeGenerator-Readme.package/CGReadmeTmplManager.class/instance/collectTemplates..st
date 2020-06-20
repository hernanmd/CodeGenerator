accessing
collectTemplates: selectedSections 
	" Answer a <Collection> of <FileReference> each one representing a template from aCollection of template names "

	| tplContainers |
	tplContainers := selectedSections collect: [ : sectionName | self templateContainerFor: sectionName ].
	^ tplContainers collect: #resolveTemplates
	
		
