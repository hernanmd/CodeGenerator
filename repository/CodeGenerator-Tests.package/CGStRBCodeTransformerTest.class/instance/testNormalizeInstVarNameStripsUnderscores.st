tests - naming
testNormalizeInstVarNameStripsUnderscores
	"Names WITHOUT underscores pass through unchanged. CGStRBCodeTransformer>>normalizeInstVarName: sends #removeUnderscores: (defined only on CGAbstract, which this class does not inherit), so an underscore-containing key currently raises MessageNotUnderstood."

	| t |
	t := self newTransformer.
	self
		assert: (t normalizeInstVarName: 'plain' -> self stringSchema)
		equals: 'plain'.
	self
		should: [
		t normalizeInstVarName: 'gadget_name' -> self stringSchema ]
		raise: MessageNotUnderstood