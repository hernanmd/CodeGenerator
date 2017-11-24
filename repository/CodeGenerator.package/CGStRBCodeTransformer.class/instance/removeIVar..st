code-cleaning
removeIVar: iVarName

	| model |
	
	model := RBNamespace new classNamed: self targetClass name; yourself.
	[ (RBRemoveInstanceVariableRefactoring
			model: model
			variable: iVarName
			class: self targetClass) transform; execute ]
	on: RBRefactoringError
	do: [ : ex | ]