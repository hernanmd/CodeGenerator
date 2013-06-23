code-generation
addStatement: aString
	" Adds a statement aString to the last node in the targetSelector method "
	
	| methodNode resultNode newSentenceNode |
	
	methodNode := self parserClass parseMethod: self currentMethodAsString.
	resultNode := (RBParseTreeSearcher new
		matchesTree: (RBParser parseExpression: '^ self')
		do: [ :aNode :answer | aNode ]) executeTree: methodNode.
	(newSentenceNode := self parserClass parseExpression: aString) isAssignment 
		ifTrue: [ self addVariable: newSentenceNode variable to: methodNode ].
	methodNode body addNode: newSentenceNode before: resultNode.
	self compile: methodNode newSource