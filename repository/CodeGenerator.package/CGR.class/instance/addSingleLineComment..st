accessing
addSingleLineComment: aString
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: '# ';
			nextPutAll: aString.
	self nextPutTerminator.
