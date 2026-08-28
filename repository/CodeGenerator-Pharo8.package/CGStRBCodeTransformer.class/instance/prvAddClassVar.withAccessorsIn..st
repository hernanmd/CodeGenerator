private
prvAddClassVar: iVarName withAccessorsIn: aClass
	"Add the class variable named iVarName (a <String>, capitalized) with commented
	 accessors to aClass (a <String>/<Symbol>/<Class>), using the modern refactoring
	 #execute API. Replaces the removed #asClass / #primitiveExecute usage."

	| realClass varName |
	realClass := self resolveClass: aClass.
	realClass ifNil: [ ^ self ].
	varName := iVarName capitalized.
	self logInfo: 'Adding accessors for class variable named: ' , varName.
	(realClass classVarNames includes: varName) ifFalse: [
			(RBAddClassVariableRefactoring variable: varName class: realClass)
				execute ].
	(RBCreateCommentedAccessorsForVariableRefactoring
		 variable: varName
		 class: realClass
		 classVariable: true) execute.
	self logInfo: 'done'