accessing
badges

	^ badges
		ifNil: [ badges := CGShieldsBadgeCollection new ]