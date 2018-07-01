accessing
bleedingEdgeInstExpr
	" Answer a <String> with the development installation expression preceded by a title "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '## Bleeding Edge version';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self bleedingEdgeTag;
			nextPutTerminator;			
			nextPutAll: '```';
			nextPutAll: self languageTag;
			nextPutTerminator;
			nextPutAll: bleedingEdgeInstExpr;
			nextPutTerminator;
			nextPutAll: '```';
			nextPutTerminator ]