callbacks
sectionLocationFor: sectionName
	" Answer a <FileReference> pointing to a directory containing template files for sectionName  "

	^ self templatesDir / (self class asTemplateSectionName: sectionName).