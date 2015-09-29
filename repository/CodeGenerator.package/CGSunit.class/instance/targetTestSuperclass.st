accessing
targetTestSuperclass

	^ targetSuperclass
		ifNil: [ targetSuperclass := self defaultTestSuperclass ]