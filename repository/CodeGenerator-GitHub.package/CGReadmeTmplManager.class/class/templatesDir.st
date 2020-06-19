private - sections
templatesDir
	" Answer a <FileReference> with the directory to the template sections "

	^ TemplatesDir
		ifNil: [ 
			self cloneTemplatesRepository.
			TemplatesDir := self defaultTemplateLocation ].