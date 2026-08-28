tests
testInstVarNameStripsUnderscores
	"instVarNameFor: camelCases underscores and lowercases the initial."

	| p |
	p := CGNamePolicy new.
	self assert: (p instVarNameFor: 'gadget_name') equals: 'gadgetName'.
	self assert: (p instVarNameFor: 'plain') equals: 'plain'