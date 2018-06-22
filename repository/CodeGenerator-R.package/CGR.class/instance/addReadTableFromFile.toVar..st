accessing - appending functions
addReadTableFromFile: fileName toVar: varName
	
	self codeStream
			nextPutAll: varName;
			nextPutAll: ' <- read.table("';
			nextPutAll: fileName;
			nextPutAll: '")';
			nextPutTerminator

