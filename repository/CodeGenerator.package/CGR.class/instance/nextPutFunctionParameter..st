code-generation
nextPutFunctionParameter: paramName
	" Append a (not first) parameter with value to the receiver's code stream "

	self codeStream 
		nextPutAll: ', ';
		nextPutAll: paramName asString