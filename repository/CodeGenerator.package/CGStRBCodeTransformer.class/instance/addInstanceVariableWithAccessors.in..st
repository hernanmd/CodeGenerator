code-generation
addInstanceVariableWithAccessors: iVarName in: aClass

	(iVarName trimBoth includes: Character space)
		ifTrue: [ ^ self ].
	[ [ [ self privateAddInstanceVariableWithAccessors: iVarName in: aClass ]
		on: RBRefactoringFailure
		do: [ : exception | self handleFailure: exception ] ]
		on: RBRefactoringWarning, Warning
		do: [ : exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ : exception | self handleError: exception ]
