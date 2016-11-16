accessing - appending functions
addWriteTable: tableName file: fileName quote: quoteBoolean colNames: colBoolean rowNames: rowBoolean
	
	self codeStream nextPutAll: 'write.table'.
	self nextPutFirstParam: fileName;
			nextPutFunctionParameter: 'quote' paramValue: quoteBoolean asString asUppercase;
			nextPutFunctionParameter: 'col.names' paramValue: colBoolean asString asUppercase;
			nextPutFunctionParameter: 'row.names' paramValue: rowBoolean asString asUppercase.
	self codeStream nextPut: $).
	self nextPutTerminator.			

