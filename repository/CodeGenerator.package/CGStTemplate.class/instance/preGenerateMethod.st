code-generation
preGenerateMethod
	" Private - Configure system receiver's internal settings before compilation "
	
	self initializeCodeStream.
	self disableCompilationLogging.
	self setAuthoring.