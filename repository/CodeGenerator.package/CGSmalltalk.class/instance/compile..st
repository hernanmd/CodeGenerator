code-generation
compile: srcString
	" Private - Compile aSelector in the receiver's configured target class "
	
	[ GRPlatform current 
		compile: (self validateSource: srcString)
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [ : ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , srcString asString ]