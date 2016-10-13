accessing
addComment: aString
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: '######################'.
	self nextPutTerminator.
	self codeStream
			nextPutAll: '# ';
			nextPutAll: aString.
	self nextPutTerminator.
	self codeStream
			nextPutAll: '######################'.
	self nextPutTerminator.
