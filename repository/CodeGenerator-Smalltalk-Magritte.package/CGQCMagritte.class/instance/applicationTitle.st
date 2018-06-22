accessing
applicationTitle
	^ applicationTitle
		ifNil: [ applicationTitle := self defaultApplicationTitle ]