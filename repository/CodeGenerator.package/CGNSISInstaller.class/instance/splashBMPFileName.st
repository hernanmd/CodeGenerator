accessing
splashBMPFileName

	^ splashBMPFileName
		ifNil: [ splashBMPFileName := self defaultSplashBMPFileName ]