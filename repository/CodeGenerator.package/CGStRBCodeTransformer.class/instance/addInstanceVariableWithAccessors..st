code-generation
addInstanceVariableWithAccessors: iVarName

	[ [ [ self privateAddInstanceVariableWithAccessors: iVarName ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning, Warning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleError: exception ]
