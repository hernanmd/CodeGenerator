tests - instance variables
testAddTypedAccessorsIsIdempotent
	"Adding the same typed variable twice does not raise (benign 'already defines variable' error is handled), and the slot appears once."

	| engine t cls |
	engine := CGSmalltalk new
		          targetClassPrefix: 'CGTst';
		          targetClassCategory: 'CGTst-Generated';
		          yourself.
	engine generateClass: 'CGTstBox'.
	t := engine codeTransformer.
	t
		addInstanceVariableWithAccessorsAndTypes:
		'width' -> self stringSchema
		className: 'CGTstBox'.
	t
		addInstanceVariableWithAccessorsAndTypes:
		'width' -> self stringSchema
		className: 'CGTstBox'.
	cls := Smalltalk classNamed: 'CGTstBox'.
	self assert: (cls instVarNames occurrencesOf: 'width') equals: 1