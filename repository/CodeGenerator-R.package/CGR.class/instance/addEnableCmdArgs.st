accessing - parameters
addEnableCmdArgs
	" Add a statement to enable command line argument processing "

	self codeStream 
		nextPutAll: 'args <- commandArgs(TRUE)'.
	self nextPutTerminator.

