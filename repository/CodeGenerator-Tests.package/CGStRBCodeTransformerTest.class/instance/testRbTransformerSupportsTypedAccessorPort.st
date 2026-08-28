tests - port
testRbTransformerSupportsTypedAccessorPort
	"Req 5: the RB strategy implements the typed-accessor port operation (does not raise
	 unsupported)."

	self assert: (CGStRBCodeTransformer includesSelector:
			 #addInstanceVariableWithAccessorsAndTypes:className:)