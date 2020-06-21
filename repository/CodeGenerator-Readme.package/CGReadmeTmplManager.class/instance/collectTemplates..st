accessing
collectTemplates: selectedSections 
	" Answer a <Collection> of <FileReference> each one representing a template from aCollection of template names "

	^ selectedSections collect: #resolveTemplates

