code-generation
nextPutFunctionParameter: paramName paramValue: aValue
	" Append a (not first) parameter with value to the receiver's code stream "

	self codeStream 
		nextPutAll: ', ';
		nextPutAll: paramName asString;
		nextPutAll: ' = ';
		nextPutAll: aValue asString