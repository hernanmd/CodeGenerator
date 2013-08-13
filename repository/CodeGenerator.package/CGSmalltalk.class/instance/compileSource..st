code-generation
compileSource: srcString
	" Private - Compile the validated srcString in the receiver's targetClass "

	[ GRPlatform current 
		compile: srcString
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [ : ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , srcString asString ]
