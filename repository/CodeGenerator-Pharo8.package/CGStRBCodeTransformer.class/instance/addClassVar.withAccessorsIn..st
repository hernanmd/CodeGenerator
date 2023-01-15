code-generation
addClassVar: iVarName withAccessorsIn: aClass

	(iVarName trimBoth includes: Character space)
		ifTrue: [ ^ self ].
	[ [ [ self prvAddClassVar: iVarName withAccessorsIn: aClass ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning, Warning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleError: exception of: iVarName in: aClass ]
