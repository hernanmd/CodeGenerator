code-generation-rb
addInstVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.
	(self shouldCleanTarget and: [ self targetClassRB hierarchyDefinesVariable: iVarName ])
		ifTrue: [ self removeInstVar: iVarName ].
	self addInstanceVariable: iVarName.
	self logInfo: 'done'.
