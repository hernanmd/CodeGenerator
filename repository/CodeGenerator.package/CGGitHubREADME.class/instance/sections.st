accessing
sections
	" Answer a <Collection> with the selected README sections "

	^ sections
		ifNil: [ sections := OrderedCollection new ]