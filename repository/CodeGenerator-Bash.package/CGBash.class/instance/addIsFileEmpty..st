accessing - utilities
addIsFileEmpty: varName
	" Add a code fragment to read a file by line "

	self codeStream nextPutAll: ' .... " ]; then echo "empty or unset"; fi
'