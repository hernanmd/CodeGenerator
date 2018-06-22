accessing - parameters
addParameter: aValue
	" Append aValue to an args[i] = val expression "
	
	self codeStream
			nextPutAll: 'args[';
			nextPutAll: self argIndex asString;
			nextPutAll: '] = "';
			nextPutAll: aValue asString;
			nextPut: $".
	self nextPutTerminator.
	self argIndex: self argIndex + 1