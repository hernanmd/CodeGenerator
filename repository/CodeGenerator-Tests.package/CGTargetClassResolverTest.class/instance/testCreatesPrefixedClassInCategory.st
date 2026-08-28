tests
testCreatesPrefixedClassInCategory
	"A newly resolved prefixed class is created in the configured category."

	| resolved |
	resolved := CGTargetClassResolver new
		            resolvePrefix: 'CGTst'
		            name: 'Fresh'
		            superclass: Object
		            category: 'CGGeneratedCode-Core'.
	self assert: (Smalltalk hasClassNamed: 'CGTstFresh').
	self assert: (resolved category = 'CGGeneratedCode-Core' or: [
			 resolved package name = 'CGGeneratedCode-Core' ])