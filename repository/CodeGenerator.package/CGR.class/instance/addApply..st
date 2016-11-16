accessing - appending functions
addApply: aString
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: 'apply(';
			nextPutAll: aString;
			nextPutAll: (String perform: self targetPlatformTerminator);
			nextPutTerminator.
