private
prvAddIVarWithAccessors: iVarName

	className := self targetClass name.
	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.
	(RBAddInstanceVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass) primitiveExecute.
	(RBCreateCommentedAccessorsForVariableRefactoring
			model: model
			variable: iVarName
			class: theClass
			classVariable: false) primitiveExecute.
	model changes changes do: [ : change | RBRefactoryChangeManager instance performChange: change ].
	self logInfo: 'done'.