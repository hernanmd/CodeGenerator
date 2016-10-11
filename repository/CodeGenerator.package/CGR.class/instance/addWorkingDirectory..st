accessing
addWorkingDirectory: directoryName
	" Append setwd "
	
	self codeStream
			nextPutAll: 'setwd("';
			nextPutAll: directoryName;
			nextPutAll: '")';
			nextPutAll: self targetPlatformTerminator.
