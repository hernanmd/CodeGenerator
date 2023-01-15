code-generation
prvAddClassVar: iVarName

	self logInfo: 'Adding class variable named: ' , iVarName capitalized.	
	(RBAddClassVariableRefactoring 
			model: model
			variable: iVarName capitalized
			class: theClass) execute.
	self logInfo: 'done'.