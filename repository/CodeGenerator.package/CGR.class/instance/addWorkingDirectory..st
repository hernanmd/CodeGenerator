accessing - prologue
addWorkingDirectory: directoryName
	" Append setwd "
	
	self 
		addSingleParameterFunction: 'setwd' 
		parameter: directoryName

