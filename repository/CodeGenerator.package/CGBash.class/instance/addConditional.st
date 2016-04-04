accessing - utilities
addConditional
	" Add a code fragment template for testing a variable "

	self codeStream nextPutAll: 'if [ "$variable" == "one" ]; then
    doSomething
fi
'