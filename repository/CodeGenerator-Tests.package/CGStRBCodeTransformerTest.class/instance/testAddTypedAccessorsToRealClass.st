tests - instance variables
testAddTypedAccessorsToRealClass
	"addInstanceVariableWithAccessorsAndTypes:className: adds the slot and commented, typed accessors to the real class."

	| engine t cls |
	engine := CGSmalltalk new
		          targetClassPrefix: 'CGTst';
		          targetClassCategory: 'CGTst-Generated';
		          yourself.
	engine generateClass: 'CGTstBox'.
	t := engine codeTransformer.
	t
		addInstanceVariableWithAccessorsAndTypes: 'width' -> self stringSchema
		className: 'CGTstBox'.
	cls := Smalltalk classNamed: 'CGTstBox'.
	self assert: (cls instVarNames includes: 'width').
	self assert: (cls includesSelector: #width).
	self assert: (cls includesSelector: #width:).
	self assert: ((cls >> #width:) protocol asString includesSubstring: 'accessing')