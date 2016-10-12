accessing - prologue
addInstall: libraryName
	" Append libraryName install statement "
	
	self 
		addSingleParameterFunction: 'install.packages' 
		parameter: libraryName
