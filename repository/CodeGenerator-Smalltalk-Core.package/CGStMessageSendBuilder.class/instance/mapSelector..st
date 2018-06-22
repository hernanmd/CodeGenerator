accessing
mapSelector: aSymbol

	^ aSymbol isUnary
		ifTrue: [ self buildArgumentsForUnarySelector: aSymbol ]
		ifFalse: [ aSymbol isKeyword 
			ifTrue: [ self buildArgumentsForKeywordSelector: aSymbol ]
			ifFalse: [ self buildArgumentsForBinarySelector: aSymbol ] ]