accessing
templatesUsername

	^ TemplatesUsername
		ifNil: [ TemplatesUsername := self defaultTemplatesUsername ]