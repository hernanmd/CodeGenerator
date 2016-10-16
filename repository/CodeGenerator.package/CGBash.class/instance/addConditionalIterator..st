accessing - utilities
addConditionalIterator: varName
	" Add a code fragment to iterate varName (containing a bash String) "

	self codeStream 
		nextPutAll: 'while [ "$' , varName , '" != "xxxx" ]; do myVar="${' , varName , '}x"; echo $', varName ,'; done
'