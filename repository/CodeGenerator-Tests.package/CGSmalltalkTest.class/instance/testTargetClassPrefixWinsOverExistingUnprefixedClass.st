tests - class creation
testTargetClassPrefixWinsOverExistingUnprefixedClass
	"When a prefix is set, targetClass: creates/uses the PREFIXED class and does NOT reuse an existing same-named unprefixed class (previously it silently mutated the unprefixed class, e.g. Pet)."

	| gen |
	gen := self newGenerator.
	gen targetClass: 'CGSmalltalkTest'.
	self assert: gen targetClass name equals: #CGTstCGSmalltalkTest.
	self deny: gen targetClass identicalTo: CGSmalltalkTest