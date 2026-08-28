tests
testNoPrefixReusesExistingClass
	"With no prefix, resolve reuses the existing exact-name class."

	self assert: (CGTargetClassResolver new
			 resolvePrefix: nil
			 name: 'Point'
			 superclass: Object
			 category: 'CGGeneratedCode-Core') == Point