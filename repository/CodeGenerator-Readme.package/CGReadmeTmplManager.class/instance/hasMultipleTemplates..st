testing
hasMultipleTemplates: templateCollection
	" Answer <true> if allTemplates has more than one template "

	^ templateCollection anySatisfy: [ : tmpl | tmpl size > 1 ]		
