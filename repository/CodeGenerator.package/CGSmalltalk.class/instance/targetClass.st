accessing
targetClass
	" Answer class where the render code will be written.
	For Seaside will be a WAComponent subclass "
	
	^ targetClass
		ifNil: [ 	targetClass := self defaultTargetClass ]
