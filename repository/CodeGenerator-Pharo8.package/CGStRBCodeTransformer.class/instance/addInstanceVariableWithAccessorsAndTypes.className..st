operations
addInstanceVariableWithAccessorsAndTypes: iVarAssoc className: aString
	"Add an instance variable (named by iVarAssoc key, a <String>) with commented, typed
	 accessors to the class named aString (a <String>). iVarAssoc is an <Association>
	 whose value is the property schema, used to derive the accessor type. Names
	 containing spaces are skipped. Refactoring warnings/errors are handled so a single
	 problematic property does not abort a whole generation run."

	(iVarAssoc key includes: Character space)
		ifTrue: [ ^ self ].
	[ [ self privateAddInstanceVariableWithAccessorsAndTypes: iVarAssoc className: aString ]
		on: RBRefactoringWarning, Warning
		do: [ :exception | self handleWarning: exception ] ]
		on: RBRefactoringError
		do: [ :exception | self handleError: exception ]