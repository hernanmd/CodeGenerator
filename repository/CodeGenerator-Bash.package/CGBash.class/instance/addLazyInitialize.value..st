accessing - utilities
addLazyInitialize: varName value: aValue
	" Add a code fragment to iterate varName (containing a bash String) "

	self codeStream 
		nextPutAll: varName;
		nextPutAll: aValue between: '=${' and: '}"'
