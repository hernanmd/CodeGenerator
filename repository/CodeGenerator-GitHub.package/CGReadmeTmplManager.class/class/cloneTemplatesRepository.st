private - sections
cloneTemplatesRepository
	
	self release.
	Iceberg remoteTypeSelector: #httpsURL.
	[ 
		IceGitClone new
			location: self defaultTemplateLocation;
			url: self templateRemoteUrlToUse;
			execute
	]
	on: IceCloneLocationAlreadyExists
	do: [ : ex | ex return: nil ].