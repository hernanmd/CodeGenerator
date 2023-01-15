code-generation
addInstVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.
	self shouldCleanTarget
		ifTrue: [ self removeIVar: iVarName ].
	self addIVar: iVarName.
	self logInfo: 'done'.