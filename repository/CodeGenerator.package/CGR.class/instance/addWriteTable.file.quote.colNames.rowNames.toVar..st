accessing - appending functions
addWriteTable: tableName file: fileName quote: quoteBoolean colNames: colBoolean rowNames: rowBoolean toVar: varName
	
	self codeStream
			nextPutAll: varName;
			nextPutAll: ' <- write.table(';
			nextPutAll: fileName;
			nextPutAll: ', quote = ' , quoteBoolean asString asUppercase;
			nextPutAll: 'col.names = ' , colBoolean asString asUppercase;
			nextPutAll: 'row.names = ' , rowBoolean asString asUppercase;
			nextPut: $).
	self nextPutTerminator.			

