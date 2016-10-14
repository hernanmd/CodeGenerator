accessing - appending functions
addReadTableFromFile: fileName stringsAsFactors: aBoolean toVar: varName
	
	self codeStream
			nextPutAll: varName;
			nextPutAll: ' <- read.table("';
			nextPutAll: fileName;
			nextPutAll: '", stringsAsFactors = ';
			nextPutAll: aBoolean asString asUppercase;
			nextPutAll: '")';
			nextPutTerminator

