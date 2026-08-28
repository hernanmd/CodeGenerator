tests
testClassNameNormalizationAndPrefix
	"classNameFor: validates, camelCases underscores, singularizes (with exceptions), prefixes."

	| p |
	p := CGNamePolicy new
		     prefix: 'PS';
		     yourself.
	self assert: (p classNameFor: 'pets') equals: 'PSPet'.
	self assert: (p classNameFor: 'gadget_name') equals: 'PSGadgetName'.
	self assert: (p classNameFor: 'status') equals: 'PSStatus'.
	self assert: (p classNameFor: 'address') equals: 'PSAddress'.
	self assert: (CGNamePolicy new classNameFor: 'tags') equals: 'Tag'