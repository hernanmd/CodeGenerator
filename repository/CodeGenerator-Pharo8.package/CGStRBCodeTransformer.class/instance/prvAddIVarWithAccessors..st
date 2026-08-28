private
prvAddIVarWithAccessors: iVarName
	"Add the instance variable named iVarName (a <String>) with commented accessors to the
	 current target class, using the modern refactoring #execute API."

	| realClass |
	realClass := self resolveClass: self targetClass.
	realClass ifNil: [ ^ self ].
	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.
	(realClass instVarNames includes: iVarName)
		ifFalse: [
			(RBAddInstanceVariableRefactoring variable: iVarName class: realClass) execute ].
	(RBCreateCommentedAccessorsForVariableRefactoring
		variable: iVarName class: realClass classVariable: false) execute.
	self logInfo: 'done'