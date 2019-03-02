code-generation
compile
	" Private - Compile aSelector in the receiver's configured target class "

	self logCompilationStart.
	[ self platform
		compile: self sourceString
		into: (self classFor: self targetClass)
		classified: self targetMethodCategory ]
	on: OCUndeclaredVariableWarning
	do: [ : ex | self logCompilationWarn: ex ].
	self logCompilationEnd.