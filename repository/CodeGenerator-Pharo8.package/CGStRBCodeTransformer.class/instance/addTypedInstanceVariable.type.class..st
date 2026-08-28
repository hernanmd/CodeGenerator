transformer port
addTypedInstanceVariable: aName type: aTypeString class: aClassName
	"Add an instance variable named aName of type aTypeString with commented, typed accessors
	 to the class named aClassName, via the refactoring strategy. Builds the schema association
	 the underlying operation expects."

	| schema |
	schema := Dictionary new
		          at: 'type' put: aTypeString;
		          yourself.
	^ self
		  addInstanceVariableWithAccessorsAndTypes: aName -> schema
		  className: aClassName