code-generation
compile: sourceString
	" Private - Compile aSelector in the receiver's configured target class "
	
	[ GRPlatform current 
		compile: ( self validateSource: sourceString )
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [: ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , sourceString asString ]