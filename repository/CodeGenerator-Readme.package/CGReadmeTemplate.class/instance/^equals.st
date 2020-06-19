comparing
= aCGGitHubREADMETemplate

	self == aCGGitHubREADMETemplate
		ifTrue: [ ^ true ].
	self class = aCGGitHubREADMETemplate class
		ifFalse: [ ^ false ].
	^ self templateName = aCGGitHubREADMETemplate templateName
	
