tests
testCollisionRuleIsLastWins
	"Documented collision rule: two distinct inputs that normalize to the same identifier
	 produce the same name (last-wins / pure function of input)."

	| p |
	p := CGNamePolicy new.
	self assert: (p classNameFor: 'pet') equals: (p classNameFor: 'pets').
	self assert: (p classNameFor: 'Pet') equals: (p classNameFor: 'pet')