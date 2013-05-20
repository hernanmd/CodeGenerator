code-generation
compile
	" Private - Compile aSelector in the receiver's configured target class "

	[ GRPlatform current 
		compile: codeStream contents
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [: ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , sourceString asString ]