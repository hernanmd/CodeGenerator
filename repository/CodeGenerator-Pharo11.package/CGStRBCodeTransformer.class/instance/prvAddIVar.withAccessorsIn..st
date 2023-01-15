*CodeGenerator-Pharo11
prvAddIVar: iVarName withAccessorsIn: aClass

	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.
	model := RBNamespace new classNamed: aClass asString; yourself.
	(RBAddInstanceVariableRefactoring
			model: model
			variable: iVarName
			class: aClass) primitiveExecute.
	model changes changes do: [ : change | RBRefactoryChangeManager instance performChange: change ].
	model := RBNamespace new classNamed: aClass asString; yourself.
	(RBCreateCommentedAccessorsForVariableRefactoring
			model: model
			variable: iVarName
			class: aClass
			classVariable: false) primitiveExecute.
	model changes changes do: [ : change | RBRefactoryChangeManager instance performChange: change ].
	self logInfo: 'done'