comparing
= aCGReadmeTemplate

	self == aCGReadmeTemplate
		ifTrue: [ ^ true ].
	self class = aCGReadmeTemplate class
		ifFalse: [ ^ false ].
	^ self templateLocation = aCGReadmeTemplate templateLocation
	
