tests - port
testTransformerPortExposesTypedInstanceVariableOp
	"Req 9.1: the documented port operation addTypedInstanceVariable:type:class: adds a typed
	 instance variable with accessors on the RB strategy (the primary, visible call path)."

	| engine cls |
	engine := CGSmalltalk new
		          targetClassPrefix: 'CGTst';
		          targetClassCategory: 'CGGeneratedCode-Core';
		          targetClass: 'Port';
		          yourself.
	engine codeTransformer
		addTypedInstanceVariable: 'label'
		type: 'string'
		class: 'CGTstPort'.
	cls := Smalltalk classNamed: 'CGTstPort'.
	self assert: (cls instVarNames includes: 'label').
	self assert: (cls includesSelector: #label:)