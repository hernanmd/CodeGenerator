accessing
ghListSections
	^ ghListSections
		ifNil: [ ghListSections := Dictionary new ]