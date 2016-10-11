accessing - parameters
buildParameter: aValue
	" Append aValue to an args[i] = val expression "
	
	self codeStream
			nextPutAll: 'args[';
			nextPutAll: self argIndex asString;
			nextPutAll: '] = ';
			nextPutAll: aValue asString.
	self argIndex: self argIndex + 1