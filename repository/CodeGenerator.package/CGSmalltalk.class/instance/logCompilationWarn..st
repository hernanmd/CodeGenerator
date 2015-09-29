logging
logCompilationWarn: exception
	" Private - Compilation warn "

	self logWarn: 'Warning UndeclaredVariableWarning in ' , 
		self targetClass asString , 
		'>>' , 
		self sourceString asString