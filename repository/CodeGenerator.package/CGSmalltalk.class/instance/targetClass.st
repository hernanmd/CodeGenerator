accessing
targetClass
	" Answer the class where the code will be written "
	
	^ targetClass
		ifNil: [ 	targetClass := self defaultTargetClass ]
