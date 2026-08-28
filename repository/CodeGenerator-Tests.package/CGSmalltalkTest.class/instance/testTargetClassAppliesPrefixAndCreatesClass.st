tests - class creation
testTargetClassAppliesPrefixAndCreatesClass
	"Setting an unknown target class name creates it, prefixed with targetClassPrefix,
	 as a subclass of the target superclass (Object by default)."

	| gen |
	gen := self newGenerator.
	gen targetClass: 'Widget'.
	self assert: (Smalltalk hasClassNamed: 'CGTstWidget').
	self assert: gen targetClass name equals: #CGTstWidget.
	self assert: gen targetClass superclass equals: Object