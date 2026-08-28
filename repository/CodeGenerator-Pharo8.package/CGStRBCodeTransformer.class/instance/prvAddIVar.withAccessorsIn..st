private
prvAddIVar: iVarName withAccessorsIn: aClass
	"Add the instance variable named iVarName (a <String>) with commented accessors to
	 aClass (a <String>/<Symbol>/<Class>), using the modern refactoring #execute API."

	| realClass |
	realClass := self resolveClass: aClass.
	realClass ifNil: [ ^ self ].
	self logInfo:
		'Adding accessors for instance variable named: ' , iVarName.
	(realClass instVarNames includes: iVarName) ifFalse: [
			(RBAddInstanceVariableRefactoring
				 variable: iVarName
				 class: realClass) execute ].
	(RBCreateCommentedAccessorsForVariableRefactoring
		 variable: iVarName
		 class: realClass
		 classVariable: false) execute.
	self logInfo: 'done'