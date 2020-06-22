callbacks
selectTemplateDir: directoryName

	| dirRef |
	directoryName notEmpty
		ifFalse: [ ^ self ].
	dirRef := directoryName asFileReference.
	(dirRef / self readmeRepoIdentifier) exists
		ifTrue: [ self setTemplatesDir: dirRef.
			self templatesSelector textValuePending: directoryName.
			self announcer announce: CGReadmeSectionsAnnUpdate ]
		ifFalse: [ self informMessage: 'Selected directory should contain a file named: ' , self readmeRepoIdentifier ]