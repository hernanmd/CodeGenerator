code-generation
addStatement: aString
	" Adds a statement aString to the last node in the targetSelector method "
	
	| methodNode resultNode newSentenceNode |
	
	methodNode := self parserClass parseMethod: self currentMethodAsString.
	resultNode := self searchNodeIn: methodNode.
	(newSentenceNode := self parserClass parseExpression: aString) isAssignment 
		ifTrue: [ self addVariable: newSentenceNode variable to: methodNode ].
	resultNode isNil
		ifFalse: [ methodNode body addNode: newSentenceNode before: resultNode ]
		ifTrue: [ methodNode body addNode: newSentenceNode ].
	self compile: methodNode newSource