code-generation
validateSelector: aString
	" Private - Remove invalid Characters from aString, 
	in the selector part, for example : $_ "
	
	| sourceStream newSelector |
	sourceStream := aString readStream.
	newSelector := sourceStream upToSeparator copyReplaceAll: '_' with: ''.
	^ String streamContents: [: stream |
		stream 
			nextPutAll: newSelector;
			nextPutAll: sourceStream upToEnd ]
		