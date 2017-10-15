code-formatters
doubleQuote: aString
	" Private - Double quote aString for compilation "
	
	self halt.
	self flag: #toReview. "Not working very well, it adds only ' in some cases "
	aString isEmpty
		ifTrue: [ ^ self targetSelector ].
	^ String streamContents: [ :stream | 
			aString do: [ :each | 
				each = $' ifTrue: [ stream nextPut: $' ].
				stream nextPut: each ].
			stream nextPutAll: '''' ]
