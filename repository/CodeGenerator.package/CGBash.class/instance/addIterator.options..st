accessing - utilities
addIterator: varName options: aString
	" Add a code fragment to read a file by line "

	self codeStream 
		nextPutAll: 'for ';
		nextPutAll: varName;
		nextPutAll: ' in ';
		nextPutAll: aString;
		nextPutAll: '; do echo "doing $x"; done';
		nextPutAll: (String perform: self targetPlatformTerminator)