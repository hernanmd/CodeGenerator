accessing
collectTemplates: aCollection 
	" Answer a <Collection> of <FileReference> each one representing a template from aCollection of template names "

	| allTemplates |
	allTemplates := aCollection collect: [ : sectionName | self templatesFor: sectionName ].
	self halt.
	^ (self hasMultipleTemplates: allTemplates)
		ifTrue: [ 
			self informMessage: (self userTextMultipleTemplates: allTemplates).
			self selectTemplates: allTemplates ]
		ifFalse: [ allTemplates gather: #yourself ]
	
		
