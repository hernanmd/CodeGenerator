accessing
addComment: aString
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: '######################';
			nextPutAll: self targetPlatformTerminator;
			nextPutAll: '# ';
			nextPutAll: aString;
			nextPutAll: self targetPlatformTerminator;
			nextPutAll: '######################';
			nextPutAll: self targetPlatformTerminator.
