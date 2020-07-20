accessing
badges
	^ badges
		ifNil: [ badges := CGAbstractBadgesCollection new ]