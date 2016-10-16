accessing - utilities
addPathAfter: aPathname

	self codeStream 
		nextPutAll: 'PATH=$PATH:';
		nextPutAll: aPathname