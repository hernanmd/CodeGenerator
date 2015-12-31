accessing
splashBMPFileName
	" Answer a <String> specifying the splash picture to display "

	^ splashBMPFileName
		ifNil: [ splashBMPFileName := self defaultSplashBMPFileName ]