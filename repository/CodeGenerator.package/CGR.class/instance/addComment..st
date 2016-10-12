accessing
addComment: aString
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: '######################';
			nextPutAll: (String perform: self targetPlatformTerminator);
			nextPutAll: '# ';
			nextPutAll: aString;
			nextPutAll: (String perform: self targetPlatformTerminator);
			nextPutAll: '######################';
			nextPutAll: (String perform: self targetPlatformTerminator).
