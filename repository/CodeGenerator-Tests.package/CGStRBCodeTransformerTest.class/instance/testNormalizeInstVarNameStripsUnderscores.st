tests - naming
testNormalizeInstVarNameStripsUnderscores
	"normalizeInstVarName: takes an association and returns its key with underscores removed
	 and camelCased (F11 fixed: it no longer raises MessageNotUnderstood on removeUnderscores:)."

	| t |
	t := self newTransformer.
	self assert: (t normalizeInstVarName: 'plain' -> self stringSchema) equals: 'plain'.
	self assert: (t normalizeInstVarName: 'gadget_name' -> self stringSchema) equals: 'gadgetName'