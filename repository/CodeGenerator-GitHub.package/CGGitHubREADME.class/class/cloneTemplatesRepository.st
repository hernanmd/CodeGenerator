private - sections
cloneTemplatesRepository
	
	self release.
	Iceberg remoteTypeSelector: #httpsURL.
	[ 
		IceGitClone new
			location: self templateLocationToUse;
			url: self templateRemoteUrlToUse;
			execute
	]
	on: IceCloneLocationAlreadyExists
	do: [ : ex | self halt ].