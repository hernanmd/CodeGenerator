code-generation
addInstVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.
	(self owner shouldCleanTarget and: [ self targetClass hierarchyDefinesVariable: iVarName ])
		ifTrue: [ self removeIVar: iVarName ].
	self addIVar: iVarName.
	self logInfo: 'done'.