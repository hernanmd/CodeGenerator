accessing
devInstExpr
	" Answer a <String> with the development installation expression preceded by a title "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: '# Development version';
			nextPutTerminator;
			nextPutAll: devInstExpr ]
