tests
testMethodBuildFailsFastWhenOutOfOrder
	"Req 7: body/finish without a started build signals an error rather than writing to a
	 stale/nil stream."

	| session |
	session := self newContext newSession.
	session targetClass: 'Builder'.
	self should: [ session body: 'x' ] raise: Error.
	self should: [ session finishMethod ] raise: Error