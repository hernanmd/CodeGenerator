tests - instance variables
testAddTypedAccessorsSkipsNamesWithSpaces
	"A property key containing a space is skipped (no slot, no accessors, no error)."

	| engine t cls |
	engine := CGSmalltalk new targetClassPrefix: 'CGTst'; targetClassCategory: 'CGTst-Generated'; yourself.
	engine generateClass: 'CGTstBox'.
	t := engine codeTransformer.
	t addInstanceVariableWithAccessorsAndTypes: 'has space' -> self stringSchema className: 'CGTstBox'.
	cls := Smalltalk classNamed: 'CGTstBox'.
	self assert: cls instVarNames isEmpty