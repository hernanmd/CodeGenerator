accessing
codeStream

	^ codeStream
		ifNil: [ self initialize.
			codeStream ].
	