private
mdItemize: aString
	" Answer a <String> in Markdown list item format "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '  - ';
			nextPutAll: aString ]
