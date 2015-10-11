accessing
codeStream
	" Answer a <Stream> where code will be written "

	^ codeStream
		ifNil: [ 
			self initialize.
			codeStream ].
	