accessing
mapSelector: aSymbol

	^ aSymbol isUnary
		ifTrue: [ self mapUnarySelector: aSymbol ]
		ifFalse: [ aSymbol isKeyword 
			ifTrue: [ self mapKeywordSelector: aSymbol ]
			ifFalse: [ self mapBinarySelector: aSymbol ] ]