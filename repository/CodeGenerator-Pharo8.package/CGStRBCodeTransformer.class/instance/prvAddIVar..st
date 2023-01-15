private
prvAddIVar: iVarName

	self logInfo: 'Adding instance variable named: ' , iVarName.	
	(RBAddInstanceVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass) execute.
	self logInfo: 'done'.