accessing
selectTemplates: allTemplates

	^ allTemplates do: [ : tmplTypes | 
		tmplTypes do: [ : tmpl |
			self openTemplateSelectorOn: tmpl contents ] ]

