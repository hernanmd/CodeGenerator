accessing - utilities
addConditionalVar: varName
	" Add a code fragment to test varName "

	self codeStream 
		nextPutAll: 'if [ "$' , varName , '" == "one" ]; then
    ';
		nextPutAll: self doSomething;
		nextPutAll: '
fi
'