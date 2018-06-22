accessing - appending functions
addApply: aString marginVector: aNumberOrVector function: fun to: lval
	" Append aString as a comment section "
	
	self codeStream
			nextPutAll: lval;
			nextPutAll: ' <- apply(';
			nextPutAll: aString;
			nextPutAll: ', ';
			nextPutAll: aNumberOrVector asString;
			nextPutAll: ', ';			
			nextPutAll: fun.
	self nextPutTerminator.
