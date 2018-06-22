code-generation
templateAbstractSource
	" Answer a <String> of a convenience method by concatenating the template signature "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: self targetSelector asString;
			cr; crtab;
			nextPutAll: 'self shouldBeImplemented'	]
