code-generation
addIVarWithMVAccessors: iVarName

	[ [ [ self prvAddIVarWithMVAccessors: iVarName ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning, Warning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleError: exception ]
