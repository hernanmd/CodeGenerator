accessing
targetSuperclass
	^ targetSuperclass
		ifNil: [ targetSuperclass := self defaultTargetSuperclass ]