code-templates
templateScreenshots

	^ String streamContents: [ : stream |
		stream
			nextPutAll: '# Screenshots';
			nextPutTerminator.
		self screenshots doWithIndex: [ : fileName : index | 
			stream
				nextPutTerminator;
				nextPutAll: '![Screenshot ';
				nextPutAll: index asString;
				nextPutAll: '](screenshots/';
				nextPutAll: fileName;
				nextPut: $) ].
		stream nextPutTerminator ]