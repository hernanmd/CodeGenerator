accessing
badges
	^ badges
		ifNil: [ badges := OrderedCollection new ]