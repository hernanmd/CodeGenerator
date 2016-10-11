accessing
addParameter: aValue
	" Append aValue to an args[i] = val expression "
	
	self codeStream
			nextPutAll: 'args[';
			nextPutAll: self argIndex asString;
			nextPutAll: '] = ';
			nextPutAll: aValue asString;
			nextPutAll: self targetPlatformTerminator.
	self argIndex: self argIndex + 1