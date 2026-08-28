tests - type mapping
testGetParameterTypeDefaultsToObject
	"getParameterType: returns 'object' when the value is not a typed dictionary."

	| t |
	t := self newTransformer.
	self assert: (t getParameterType: Dictionary new) equals: 'object'.
	self assert: (t getParameterType: 42) equals: 'object'