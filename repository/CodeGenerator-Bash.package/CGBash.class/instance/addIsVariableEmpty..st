accessing - utilities
addIsVariableEmpty: varName
	" Add a code fragment to read a file by line "

	self codeStream nextPutAll: 'if [ -z "$' , varName , '" ]; then echo "empty or unset"; fi
'