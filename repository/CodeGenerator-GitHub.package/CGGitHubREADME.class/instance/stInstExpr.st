accessing
stInstExpr
	" Answer a <String> with the stable installation expression preceded by a title "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '## Stable version';
			nextPutTerminator;
			nextPutTerminator;
			nextPutAll: self piStableTag;
			nextPutTerminator;
			nextPutAll: '```smalltalk';
			nextPutTerminator;
			nextPutAll: stInstExpr;
			nextPutTerminator;
			nextPutAll: '```';
			nextPutTerminator ]
