tests - configuration
testCodeTransformerDefaultsToRBTransformer
	"The engine's default code transformer is the refactoring-driven back end."

	self assert: self newGenerator codeTransformer class equals: CGStRBCodeTransformer