accessing
productLowercase
	^ productLowercase
		ifNil: [ productLowercase := self product asLowercase ]