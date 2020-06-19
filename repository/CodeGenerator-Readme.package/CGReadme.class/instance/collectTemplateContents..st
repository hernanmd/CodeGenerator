private - sections
collectTemplateContents: templateRefs
	" Answer a <Collection> of <String> with template contents from templateRefs. Add an empty message String if a template reference has no contents "
	
	^ templateRefs collect: [ : tmplRef | tmplRef contents 
		ifNotEmpty: [ : tmplc | tmplc ] 
		ifEmpty: [ self defaultEmptyTemplate: tmplRef basename ] ]
