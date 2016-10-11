accessing
addLibrary: libraryName
	" Append libraryName load statement "
	
	self codeStream
			nextPutAll: 'library(';
			nextPutAll: libraryName;
			nextPutAll: ')';
			nextPutAll: self targetPlatformTerminator