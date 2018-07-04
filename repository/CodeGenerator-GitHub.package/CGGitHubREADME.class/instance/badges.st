accessing
badges
	^ badges
		ifNil: [ badges := self class availableBadgesList ]