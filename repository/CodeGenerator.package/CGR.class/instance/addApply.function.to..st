accessing - appending functions
addApply: aString function: fun to: lval
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: lval;
			nextPutAll: ' <- apply(';
			nextPutAll: aString;
			nextPutAll: fun;
			nextPutTerminator.
