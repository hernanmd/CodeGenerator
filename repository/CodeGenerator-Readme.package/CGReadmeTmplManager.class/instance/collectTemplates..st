accessing
collectTemplates: selectedSections 
	" Answer a <Collection> of <FileReference> each one representing a template from aCollection of template names "

	| allTemplates |
	allTemplates := selectedSections collect: [ : sectionName | self templatesFor: sectionName ].
	self halt.
	^ (self hasMultipleTemplates: allTemplates)
		ifTrue: [ self selectTemplates: allTemplates ]
		ifFalse: [ allTemplates gather: #yourself ]
	
		
