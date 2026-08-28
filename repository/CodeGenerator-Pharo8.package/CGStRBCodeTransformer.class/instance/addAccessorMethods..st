adding
addAccessorMethods: iVarName

	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.
	className := self targetClass name.
	(RBCreateCommentedAccessorsForVariableRefactoring
			model: model
			variable: iVarName
			class: theClass
			classVariable: false) execute.
	self logInfo: 'done'