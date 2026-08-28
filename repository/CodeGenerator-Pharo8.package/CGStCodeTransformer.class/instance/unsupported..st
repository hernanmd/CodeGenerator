transformer port
unsupported: anOperationString
	"Signal a CGUnsupportedOperation naming anOperationString (a <String>) and the receiver's
	 strategy class, for transformer-port operations a strategy does not implement."

	^ CGUnsupportedOperation signal:
		  self class name , ' does not support operation: '
		  , anOperationString