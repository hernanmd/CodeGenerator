operations
addIVar: iVarName
	"Add the instance variable named iVarName (a <String>) with accessors to the target class, handling refactoring warnings/errors so the run is not aborted."

	[
		[ self prvAddIVarWithAccessors: iVarName ]
			on: RBRefactoringWarning , Warning
			do: [ :exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]