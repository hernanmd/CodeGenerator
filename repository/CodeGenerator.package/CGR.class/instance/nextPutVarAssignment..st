code-generation
nextPutVarAssignment: varName
	" Append a (not first) parameter with value to the receiver's code stream "

	self codeStream 
		nextPutAll: varName;
		nextPutAll: ' <- '