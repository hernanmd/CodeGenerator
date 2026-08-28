private
privateAddInstanceVariableWithAccessorsAndTypes: iVarAssoc className: aString
	"Add the instance variable named by iVarAssoc (an <Association> property-name -> schema)
	 to the class named aString (a <String>), then generate commented, typed accessors.
	 Operates directly on the real class using the current Re*/RB refactoring API
	 (#execute), so no manual change replay is needed."

	| varName realClass |
	self className: aString.
	realClass := self classFor: aString.
	realClass ifNil: [ ^ self ].
	varName := self normalizeInstVarName: iVarAssoc.
	self logInfo: 'Adding accessors for instance variable named: ' , varName.
	(realClass instVarNames includes: varName)
		ifFalse: [
			(RBAddInstanceVariableRefactoring
				variable: varName
				class: realClass) execute ].
	(RBCreateCommentedAccessorsForTypedVariableRefactoring
		variable: varName
		class: realClass
		classVariable: false)
			type: (self getParameterType: iVarAssoc value);
			execute.
	self logInfo: 'done'