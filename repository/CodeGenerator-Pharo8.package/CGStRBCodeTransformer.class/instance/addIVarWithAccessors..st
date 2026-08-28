code-generation
addIVarWithAccessors: iVarName

	[ [ self prvAddIVarWithAccessors: iVarName ]
		on: RBRefactoringWarning, Warning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleError: exception ]
