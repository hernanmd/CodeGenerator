accessing - url
customBadgeURLSegment
	" Answer a <String> with the receiver's url "

	^ '{1}-{2}-{3}.{4}' format: { 
		self subject .
		self status .
		self color name asString .
		self imgFormat }