accessing - badges
badges
	^ badges
		ifNil: [ badges := CGAbstractBadgesCollection new ]