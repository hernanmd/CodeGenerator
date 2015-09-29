code-generation
preGenerate
	" Private - Configure system receiver's internal settings before compilation "
	
	self initializeCodeStream.
	self disableCompilationLogging.
	self setAuthoring.
	self generateMethodHeader.
	self generateMethodBody.