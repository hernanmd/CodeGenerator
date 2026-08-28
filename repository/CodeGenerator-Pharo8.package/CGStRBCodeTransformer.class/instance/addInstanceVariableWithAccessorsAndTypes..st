operations
addInstanceVariableWithAccessorsAndTypes: iVarAssoc
	"Add the instance variable named by iVarAssoc key with commented, typed accessors to the current target class. Refactoring warnings/errors are handled so a single problematic property does not abort the run."

	[
		[ self privateAddInstanceVariableWithAccessorsAndTypes: iVarAssoc ]
			on: RBRefactoringWarning , Warning
			do: [ :exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]