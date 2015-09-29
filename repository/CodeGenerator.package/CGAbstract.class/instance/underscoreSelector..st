code-formatters
underscoreSelector: aString
	" Private - Remove invalid Characters from aString, in the selector part, for example : $_ "
	
	| sourceStream newSelector |
	sourceStream := aString readStream.
	newSelector := (sourceStream upTo: Character cr) copyReplaceAll: '_' with: String empty.
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: newSelector;
			nextPutAll: sourceStream upToEnd ]
		