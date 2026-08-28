tests - class creation
testTargetClassWithoutPrefixReusesExistingClass
	"With no prefix configured, targetClass: reuses an existing class of that exact name."

	| gen |
	gen := CGSmalltalk new.
	gen targetClass: 'CGSmalltalkTest'.
	self assert: gen targetClass identicalTo: CGSmalltalkTest