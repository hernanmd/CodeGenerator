tests - type mapping
testGetParameterTypeReadsType
	"getParameterType: returns the schema's declared #type."

	self assert: (self newTransformer getParameterType: self stringSchema) equals: 'string'