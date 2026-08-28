tests
testCompositionStyleGenerationWithoutSubclassingEngine
	"Req 11.4: a client can drive generation by composing a session (no subclassing of the
	 engine): configure a context, obtain a session, set the target class, add a typed ivar."

	| session cls |
	session := self newContext newSession.
	session targetClass: 'Widget'.
	session addInstanceVariable: 'gadget_name' type: 'string'.
	cls := Smalltalk classNamed: 'CGTstWidget'.
	self assert: cls notNil.
	self assert: (cls instVarNames includes: 'gadgetName').
	self assert: (cls includesSelector: #gadgetName).
	self assert: (cls includesSelector: #gadgetName:)