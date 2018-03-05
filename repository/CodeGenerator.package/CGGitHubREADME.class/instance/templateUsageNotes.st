code-templates
templateUsageNotes

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Usage notes';
			nextPutTerminator;
			nextPutTerminator.
		self usageNotes do: [ : un |
			stream 
				nextPutAll: (self mdItemize: un);
				nextPutTerminator  ] ]
