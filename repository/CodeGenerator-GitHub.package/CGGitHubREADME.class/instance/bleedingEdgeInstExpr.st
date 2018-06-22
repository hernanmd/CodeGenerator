accessing
bleedingEdgeInstExpr
	" Answer a <String> with the development installation expression preceded by a title "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '## Bleeding Edge version';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self piBleedingEdgeTag;
			nextPutTerminator;			
			nextPutAll: '```smalltalk';
			nextPutTerminator;
			nextPutAll: bleedingEdgeInstExpr;
			nextPutTerminator;
			nextPutAll: '```';
			nextPutTerminator ]