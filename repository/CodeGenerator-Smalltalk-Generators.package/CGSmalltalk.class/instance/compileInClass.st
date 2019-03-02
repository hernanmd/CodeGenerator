code-generation-compilation
compileInClass
	" Private - Compile aSelector in the receiver's configured target class "

	self logCompilationStart.
	[ self platform
		compile: self sourceString
		into: (self classFor: self targetClass) class
		classified: self targetMethodCategory ]
	on: OCUndeclaredVariableWarning , Warning
	do: [ : ex | self logCompilationWarn: ex ].
	self logCompilationEnd.