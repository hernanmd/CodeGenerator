tests - instance variables
testAddIVarInstallsInstanceVariableAndAccessors
	"CGSmalltalk>>addIVar: (via the RB transformer) installs the instance variable and its
	 accessors on the target class using the modern refactoring API."

	| gen cls |
	gen := self newGenerator.
	gen targetClass: 'Gadget'.
	gen addIVar: 'weight'.
	cls := Smalltalk classNamed: 'CGTstGadget'.
	self assert: (cls instVarNames includes: 'weight').
	self assert: (cls includesSelector: #weight).
	self assert: (cls includesSelector: #weight:)