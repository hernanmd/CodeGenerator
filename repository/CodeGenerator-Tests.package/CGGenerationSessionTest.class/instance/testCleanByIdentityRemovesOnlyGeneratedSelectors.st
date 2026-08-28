tests
testCleanByIdentityRemovesOnlyGeneratedSelectors
	"Req 8: cleanGenerated removes exactly the session-generated selectors and leaves unrelated
	 methods intact; a second call is a safe no-op."

	| session cls |
	session := self newContext newSession.
	session targetClass: 'Cleanup'.
	session addInstanceVariable: 'a' type: 'string'.
	cls := Smalltalk classNamed: 'CGTstCleanup'.
	cls compile: 'unrelated ^ 1' classified: 'manual'.
	session cleanGenerated.
	self deny: (cls includesSelector: #a).
	self deny: (cls includesSelector: #a:).
	self assert: (cls includesSelector: #unrelated).
	self assert: session generatedSelectors isEmpty.
	session cleanGenerated "no-op, must not raise"