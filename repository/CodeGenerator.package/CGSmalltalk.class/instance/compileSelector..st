code-generation
compileSelector: selectorString
	" Private - Compile the selectorString in the receiver's targetClass "

	[ GRPlatform current 
		compile: selectorString trimBoth
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [ : ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , selectorString asString ]
