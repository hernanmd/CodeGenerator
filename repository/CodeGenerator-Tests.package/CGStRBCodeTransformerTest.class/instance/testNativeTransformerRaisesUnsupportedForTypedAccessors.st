tests - port
testNativeTransformerRaisesUnsupportedForTypedAccessors
	"Req 5: the native strategy raises CGUnsupportedOperation (not DNU/no-op) for typed
	 commented-accessor operations it does not implement."

	self
		should: [
				CGStNativeCodeTransformer new
					addInstanceVariableWithAccessorsAndTypes: 'x' -> (Dictionary new
							 at: 'type' put: 'string';
							 yourself)
					className: 'Object' ]
		raise: CGUnsupportedOperation