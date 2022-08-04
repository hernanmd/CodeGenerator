code-generation-compilation
compileSource: srcString
	" Private - Compile the validated srcString in the receiver's targetClass "

	self logCompilationStart.
	[ self platform
		compile: srcString
		into: (self classFor: self targetClass)
		classified: self targetMethodCategory ]
	on: OCUndeclaredVariableWarning, Exception 
	do: [ : ex | self logCompilationWarn: ex ].
	self logCompilationEnd.