accessing - utilities
addIterator: varName options: aString
	" Add a code fragment to read a file by line "

	self codeStream nextPutAll: 'for ', varName , ' in ' , aString , '; do echo "doing $x"; done
'