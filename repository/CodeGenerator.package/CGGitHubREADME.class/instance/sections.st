accessing
sections

	^ sections
		ifNil: [ sections := OrderedCollection new ]