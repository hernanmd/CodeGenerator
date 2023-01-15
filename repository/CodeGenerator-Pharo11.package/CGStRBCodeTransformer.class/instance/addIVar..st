code-generation
addIVar: iVarName

	[ [ [ self prvAddIVar: iVarName ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleFailure: exception ]
