accessing - utilities
addConditionalIteratorVar: varName equalsTo: aValue
	" Add a code fragment to iterate varName (containing a bash String) "

	self codeStream 
		nextPutAll: 'while [ "$';
		nextPutAll: varName;
		nextPutAll: '" != "';
		nextPutAll: aValue;
		nextPutAll: '" ]; do myVar="${';
		nextPutAll: varName;
		nextPutAll: '}x"; echo $';
		nextPutAll: varName;
		nextPutAll: '; done
'