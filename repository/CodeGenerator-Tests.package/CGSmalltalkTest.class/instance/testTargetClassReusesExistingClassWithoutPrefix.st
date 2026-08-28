tests - class creation
testTargetClassReusesExistingClassWithoutPrefix
	"Documents the current CGSmalltalk>>targetClass: behaviour (defect F6): when a class of
	 the unprefixed name already exists anywhere in the image, it is reused and the prefix
	 is NOT applied. This test pins the behaviour so a future fix is a deliberate change."

	| gen |
	gen := self newGenerator.
	gen targetClass: 'CGSmalltalkTest'.
	self assert: gen targetClass equals: CGSmalltalkTest.
	self deny: (gen targetClass name beginsWith: 'CGTst')