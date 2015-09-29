accessing
applicationName
	^ applicationName
		ifNil: [ applicationName := self defaultApplicationName ]