private
addSingleParameterFunction: functionName parameter: paramName assignTo: lval
	" Append functionName statement "
	
	self codeStream
			nextPutAll: lval;
			nextPutAll: ' <- ';
			nextPutAll: functionName;
			nextPut: $(;
			nextPutAll: paramName;
			nextPut: $).
	self nextPutTerminator.
