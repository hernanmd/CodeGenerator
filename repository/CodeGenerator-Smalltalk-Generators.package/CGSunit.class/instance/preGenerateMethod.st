code-generation
preGenerateMethod
	" Private - Configure system receiver's internal settings before compilation "
	
	self resetCodeStream.
	self initializeCodeStream.
	self disableCompilationLogging.
	self setAuthoring.
	self generateMethodHeader.
	self generateMethodBody.