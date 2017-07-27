code-generation
addInstanceVariable: iVarName

	[ [ [ self privateAddInstanceVariable: iVarName ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleFailure: exception ]
