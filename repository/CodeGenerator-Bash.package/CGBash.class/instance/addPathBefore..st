accessing - utilities
addPathBefore: aPathname

	self codeStream 
		nextPutAll: aPathname;
		nextPutAll: ':$PATH'
