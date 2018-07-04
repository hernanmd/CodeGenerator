accessing
ghGenerator

	^ ghGenerator
		ifNil: [ ghGenerator := CGGitHubREADME new ]