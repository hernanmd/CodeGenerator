code-generation
addStatement: aString
	" Adds a statement aString to the last node in the targetSelector method "

	| methodNode resultNode newSentenceNode |
	methodNode := self parserClass
		parseMethod: self owner currentMethodAsString.
	resultNode := self searchNodeIn: methodNode.
	(newSentenceNode := self parserClass parseExpression: aString)
		isAssignment
		ifTrue:
			[ self addVariable: newSentenceNode variable toMethodNode: methodNode ].
	resultNode
		ifNil: [ methodNode body addNode: newSentenceNode ]
		ifNotNil: [ methodNode body addNode: newSentenceNode before: resultNode ].
	self owner compileSource: methodNode newSource