transformer port
addInstanceVariableWithAccessorsAndTypes: iVarAssoc className: aString
	"Transformer-port operation: add an instance variable (named by iVarAssoc key) with typed,
	 commented accessors to the class named aString. Default is unsupported; strategies that
	 support it (RB) override. iVarAssoc is an <Association> property-name -> schema; aString a
	 <String>."

	^ self unsupported:
		  'addInstanceVariableWithAccessorsAndTypes:className:'