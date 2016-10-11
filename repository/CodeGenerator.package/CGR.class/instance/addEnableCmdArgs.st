accessing
addEnableCmdArgs

	self codeGenerator 
		nextPutAll: 'args <- commandArgs(TRUE)';
		nextPutAll: self targetPlatformTerminator
