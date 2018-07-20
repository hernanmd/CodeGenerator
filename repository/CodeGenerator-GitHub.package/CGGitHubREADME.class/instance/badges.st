accessing
badges
	^ badges
		ifNil: [ badges := CGGitHubBadges new ]