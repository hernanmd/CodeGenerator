code-templates
templateUsage

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Usage';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self usageText;
			nextPutTerminator ]
