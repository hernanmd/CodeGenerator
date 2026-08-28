tests
testMethodBuildLifecycleCompiles
	"Req 7: a start → body → finish build compiles the method and records its selector."

	| session cls |
	session := self newContext newSession.
	session targetClass: 'Builder'.
	session startMethod.
	session
		body: 'greeting';
		body: String cr , String tab , '^ 42'.
	session finishMethod.
	cls := Smalltalk classNamed: 'CGTstBuilder'.
	self assert: (cls includesSelector: #greeting).
	self assert: cls new greeting equals: 42.
	self assert: (session generatedSelectors includes: #greeting)