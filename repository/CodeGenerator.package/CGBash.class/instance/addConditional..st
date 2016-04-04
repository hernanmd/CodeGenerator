accessing - utilities
addConditional: varName
	" Add a code fragment to test varName "

	self codeStream nextPutAll: 'if [ "$' , varName , '" == "one" ]; then
    doSomething
fi
'