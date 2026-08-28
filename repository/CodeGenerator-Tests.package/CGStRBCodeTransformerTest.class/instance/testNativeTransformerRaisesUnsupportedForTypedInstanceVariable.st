tests - port
testNativeTransformerRaisesUnsupportedForTypedInstanceVariable
	"Req 9/5: the native strategy raises CGUnsupportedOperation for the documented typed-accessor
	 port op it does not implement."

	self
		should: [
				CGStNativeCodeTransformer new
					addTypedInstanceVariable: 'x'
					type: 'string'
					class: 'Object' ]
		raise: CGUnsupportedOperation