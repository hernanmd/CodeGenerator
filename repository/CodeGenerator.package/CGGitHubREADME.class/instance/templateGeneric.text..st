code-templates
templateGeneric: paragraphTitle text: paragraphText

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: paragraphTitle;
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: paragraphText;
			nextPutTerminator ]