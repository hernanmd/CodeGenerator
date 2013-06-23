code-generation
addInstVar: iVarName

	| model className theClass |

	className := self targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.
	(RBAddInstanceVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass) execute.
