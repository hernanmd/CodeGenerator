code-generation
addInstVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.
	self shouldCleanTarget
		ifTrue: [ self removeInstVar: iVarName ].
	self addInstanceVariable: iVarName.
	self logInfo: 'done'.