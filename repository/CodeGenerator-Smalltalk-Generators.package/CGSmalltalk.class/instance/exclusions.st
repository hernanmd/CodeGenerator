accessing
exclusions
	^ exclusions
		ifNil: [ exclusions := OrderedCollection new ]