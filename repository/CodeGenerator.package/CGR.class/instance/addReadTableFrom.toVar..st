accessing - appending functions
addReadTableFrom: fileName toVar: varName
	
	self codeStream
			nextPutAll: varName;
			nextPutAll: ' <- read.table(';
			nextPutAll: fileName;
			nextPutAll: ', stringsAsFactors = FALSE)'.
	self nextPutTerminator.			

