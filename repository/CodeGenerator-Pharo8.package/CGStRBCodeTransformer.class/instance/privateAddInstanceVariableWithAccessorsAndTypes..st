private
privateAddInstanceVariableWithAccessorsAndTypes: iVarAssoc
	"Add the instance variable named by iVarAssoc key to the current target class and
	 generate commented, typed accessors. Operates on the real class using the modern
	 refactoring #execute API (no primitiveExecute, no manual change replay)."

	| realClass varName |
	realClass := self resolveClass: self targetClass.
	realClass ifNil: [ ^ self ].
	varName := iVarAssoc key.
	self logInfo: 'Adding accessors for instance variable named: ' , varName.
	(realClass instVarNames includes: varName)
		ifFalse: [
			(RBAddInstanceVariableRefactoring variable: varName class: realClass) execute ].
	(RBCreateCommentedAccessorsForTypedVariableRefactoring
		variable: varName class: realClass classVariable: false)
			type: (self getParameterType: iVarAssoc value);
			execute.
	self logInfo: 'done'