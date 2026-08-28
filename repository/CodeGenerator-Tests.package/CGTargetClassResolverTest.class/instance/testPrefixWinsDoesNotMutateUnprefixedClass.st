tests
testPrefixWinsDoesNotMutateUnprefixedClass
	"With a prefix active, resolve creates/uses only the prefixed class and never returns or
	 mutates an existing unprefixed class of the same base name (Req 3.2 / F6)."

	| resolved |
	resolved := CGTargetClassResolver new
		            resolvePrefix: 'CGTst'
		            name: 'Point'
		            superclass: Object
		            category: 'CGGeneratedCode-Core'.
	self assert: resolved name equals: #CGTstPoint.
	self deny: resolved == Point.
	self assert: Point instVarNames equals: #( #x #y )