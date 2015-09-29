code-formatters
doubleQuote: aString
	" Private - Double quote aString for compilation "
	
	aString isEmpty
		ifTrue: [ ^ self targetSelector ].
	^ String streamContents: [ :stream | 
			aString do: [ :each | 
				each = $' ifTrue: [ stream nextPut: $' ].
				stream nextPut: each ].
			stream nextPutAll: '''' ]