accessing - appending functions
addApply: aString marginVector: aNumberOrVector function: fun to: lval
	" Append aString as a comment section "
	
	self nextPutVarAssignment: lval.
	self codeStream
			nextPutAll: 'apply'.
	self
			nextPutFirstParam: aString;
			nextPutFunctionParameter: aNumberOrVector asString;
			nextPutFunctionParameter: fun.
	self nextPutTerminator.
