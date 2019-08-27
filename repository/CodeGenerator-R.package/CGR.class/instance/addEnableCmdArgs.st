accessing - parameters
addEnableCmdArgs
	" Add a statement to enable command line argument processing "

	self readArgs: true.
	self codeStream 
		nextPutAll: 'args <- commandArgs(TRUE)'.
	self nextPutTerminator.

