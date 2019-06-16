accessing
templateManager
	
	^ templateManager
		ifNil: [ templateManager := CGGitHubREADMETmplManager new ]