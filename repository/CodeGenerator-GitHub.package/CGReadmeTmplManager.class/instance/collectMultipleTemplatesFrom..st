accessing
collectMultipleTemplatesFrom: allTemplates

	^ allTemplates collect: [ : tmpl | tmpl size > 1 ]