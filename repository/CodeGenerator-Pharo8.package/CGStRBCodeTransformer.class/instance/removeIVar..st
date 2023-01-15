code-cleaning
removeIVar: instVarName
	" Remove instVarName <String> from the receiver's targetClass. If the variable has references, then remove instVarName anyway, let the user handle references "

	self targetClass realClass removeInstVarNamed: instVarName.
"	[ (RBRemoveInstanceVariableRefactoring
			variable: instVarName
			class: self targetClass) execute ]
	on: RBRefactoringError
	do: [ : ex | self halt. ex resume ]"