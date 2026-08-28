tests - instance variables
testAddInstanceVariableWithTypedAccessors
	"Adding a typed instance variable creates the slot and a commented accessor pair."

	| gen cls |
	gen := self newGenerator.
	gen targetClass: 'Widget'.
	gen
		addInstanceVariableWithAccessorsAndType: 'label' -> (Dictionary new
				 at: 'type' put: 'string';
				 yourself)
		className: 'CGTstWidget'.
	cls := Smalltalk classNamed: 'CGTstWidget'.
	self assert: (cls instVarNames includes: 'label').
	self assert: (cls includesSelector: #label).
	self assert: (cls includesSelector: #label:)