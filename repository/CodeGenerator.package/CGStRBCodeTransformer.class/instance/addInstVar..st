code-generation
addInstVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.
	(self owner shouldCleanTarget and: [ self targetClass hierarchyDefinesVariable: iVarName ])
		ifTrue: [ self removeInstVar: iVarName ].
	self addInstanceVariable: iVarName.
	self logInfo: 'done'.