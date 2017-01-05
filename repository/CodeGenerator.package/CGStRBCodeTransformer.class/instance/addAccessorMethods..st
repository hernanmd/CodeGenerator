code-generation
addAccessorMethods: iVarName

	| model className theClass |
	
	self logInfo: 'Adding accessors for instance variable named: ' , iVarName.	
	className := self targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.			
	(RBCreateAccessorsForVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass 
			classVariable: false) execute.
	self logInfo: 'done'.