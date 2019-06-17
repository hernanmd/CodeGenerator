private - sections
templatesDir
	" Answer a <FileReference> with the directory to the template sections "

	self templateLocationToUse exists
		ifFalse: [ self cloneTemplatesRepository ].
	^ self templateLocationToUse