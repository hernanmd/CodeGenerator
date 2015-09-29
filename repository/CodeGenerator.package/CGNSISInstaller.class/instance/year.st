accessing
year
	^ year
		ifNil: [ year := self defaultYear ]