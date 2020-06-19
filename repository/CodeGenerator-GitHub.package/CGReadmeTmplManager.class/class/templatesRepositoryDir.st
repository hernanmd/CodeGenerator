private - sections
templatesRepositoryDir

	^ TemplatesRepositoryDir
		ifNil: [ TemplatesRepositoryDir := self defaultTemplatesRepositoryDir ]