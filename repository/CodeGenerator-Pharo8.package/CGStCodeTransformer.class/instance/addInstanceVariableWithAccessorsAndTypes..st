transformer port
addInstanceVariableWithAccessorsAndTypes: iVarAssoc
	"Transformer-port operation: add an instance variable with typed, commented accessors to
	 the current target class. Default is unsupported; strategies that support it (RB) override.
	 iVarAssoc is an <Association> property-name -> schema."

	^ self unsupported: 'addInstanceVariableWithAccessorsAndTypes:'