code-generation
compile: sourceString selector: selectorString
	" Private - Compile sourceString with selectorString 
	in the receiver's configured target class "

	self targetSelector: selectorString.	
	self generateMethodHeader.
	
	[ GRPlatform current 
		compile: ( self validateSource: sourceString )
		into: self targetClass 
		classified: self methodCategory ]
	on: UndeclaredVariableWarning
	do: [: ex | self log: 'Warning UndeclaredVariableWarning in ' , self targetClass asString , '>>' , sourceString asString ]