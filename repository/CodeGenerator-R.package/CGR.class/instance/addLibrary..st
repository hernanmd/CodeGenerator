accessing - prologue
addLibrary: libraryName
	" Append libraryName load statement "
	
	self 
		addSingleParameterFunction: 'library' 
		parameter: libraryName
