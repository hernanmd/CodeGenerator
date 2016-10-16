accessing - utilities
addConditional: varName equalsTo: aValue
	" Add a code fragment to test varName "

	self codeStream 
		nextPutAll: 'if [ "$' , varName , '" == "', aValue , '" ]; then
    ';
		nextPutAll: self doSomething;
		nextPutAll: '
fi
'