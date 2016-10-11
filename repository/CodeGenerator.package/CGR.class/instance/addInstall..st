accessing
addInstall: libraryName
	" Append libraryName install statement "
	
	self codeStream
			nextPutAll: 'install.packages(''';
			nextPutAll: libraryName;
			nextPutAll: ''')';
			nextPutAll: self targetPlatformTerminator