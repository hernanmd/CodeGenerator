accessing
badges
	^ badges
		ifNil: [ badges := CGReadmeBadges new ]