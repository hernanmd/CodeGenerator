accessing
devInstExpr
	" Answer a <String> with the development installation expression preceded by a title "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '## Development version';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self devTag;
			nextPutTerminator;			
			nextPutAll: '```';
			nextPutAll: self languageTag;
			nextPutTerminator;
			nextPutAll: self devInstExpr;
			nextPutTerminator;
			nextPutAll: '```';
			nextPutTerminator ]