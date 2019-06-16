accessing
templatesDir

	^ templatesDir
		ifNil: [ templatesDir := self defaultTemplatesDir ]