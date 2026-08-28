tests
testSequentialSessionsAreIsolated
	"Req 11.1: two sessions from the same context do not share target class or generated state."

	| ctx s1 s2 |
	ctx := self newContext.
	s1 := ctx newSession.
	s1 targetClass: 'Alpha'.
	s1 addInstanceVariable: 'a' type: 'string'.
	s2 := ctx newSession.
	self assert: s1 currentClass name equals: #CGTstAlpha.
	self assert: s2 currentClass isNil.
	self deny: s1 == s2.
	self deny: s1 generatedSelectors == s2 generatedSelectors.
	self assert: s2 generatedSelectors isEmpty