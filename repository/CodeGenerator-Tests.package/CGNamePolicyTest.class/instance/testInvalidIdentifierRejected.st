tests
testInvalidIdentifierRejected
	"isValidIdentifier: rejects non-identifiers (e.g. $ref, empty, leading digit)."

	| p |
	p := CGNamePolicy new.
	self assert: (p isValidIdentifier: 'name').
	self deny: (p isValidIdentifier: '$ref').
	self deny: (p isValidIdentifier: '').
	self deny: (p isValidIdentifier: '9lives')