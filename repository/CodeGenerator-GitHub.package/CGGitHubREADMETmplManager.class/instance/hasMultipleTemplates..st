testing
hasMultipleTemplates: allTemplates

	^ allTemplates anySatisfy: [ : tmpl | tmpl size > 1 ]		
