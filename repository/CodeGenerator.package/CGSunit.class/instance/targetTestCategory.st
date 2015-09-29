accessing
targetTestCategory
	^ targetTestCategory
		ifNil: [ targetTestCategory := self defaultTargetTestCategory ]