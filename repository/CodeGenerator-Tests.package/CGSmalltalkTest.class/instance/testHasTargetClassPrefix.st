tests - configuration
testHasTargetClassPrefix
	"hasTargetClassPrefix reflects whether a prefix was configured."

	self assert: self newGenerator hasTargetClassPrefix.
	self deny: CGSmalltalk new hasTargetClassPrefix