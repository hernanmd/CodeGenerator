accessing
addFunctionReadTableFrom: fileName toVar: varName
	
	self codeStream
			nextPutAll: varName;
			nextPutAll: ' <- read.table(';
			nextPutAll: fileName;
			nextPutAll: ', stringsAsFactors = FALSE)';
			nextPutAll: self targetPlatformTerminator.

