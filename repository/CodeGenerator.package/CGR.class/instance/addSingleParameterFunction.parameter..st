private
addSingleParameterFunction: functionName parameter: paramName
	" Append functionName statement "
	
	self codeStream
			nextPutAll: functionName;
			nextPut: $(;
			nextPutAll: paramName;
			nextPut: $);
			nextPutAll: (String perform: self targetPlatformTerminator)