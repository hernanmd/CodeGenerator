code-generation-rb
addInstVar: iVarName

	| model className theClass |

	self logInfo: 'Adding instance variable named: ' , iVarName.
	className := self targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.
	(RBAddInstanceVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass) execute.
	self logInfo: 'done'.
