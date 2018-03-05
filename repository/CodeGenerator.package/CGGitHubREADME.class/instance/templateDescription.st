code-templates
templateDescription

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '# Description';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self description;
			nextPutTerminator ]