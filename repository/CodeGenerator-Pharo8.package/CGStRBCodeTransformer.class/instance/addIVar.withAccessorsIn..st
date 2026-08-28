operations
addIVar: iVarName withAccessorsIn: aClass
	"Add the instance variable named iVarName (a <String>) with accessors to aClass
	 (a <String>/<Symbol>/<Class>). Names containing spaces are skipped. Refactoring
	 warnings/errors are handled so the run is not aborted."

	(iVarName trimBoth includes: Character space) ifTrue: [ ^ self ].
	[
		[ self prvAddIVar: iVarName withAccessorsIn: aClass ]
			on: RBRefactoringWarning , Warning
			do: [ :exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]