code-generation
postGenerate
	" Private - Perform post code generation actions "

	self restoreAuthoring.
	self enableCompilationLogging.	
	self codeStream close.