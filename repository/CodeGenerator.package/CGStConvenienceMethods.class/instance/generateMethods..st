code-generation
generateMethods: paramNumber
	" Private - Generate target methods from receiver's selectors "
	
	paramNumber = 0
		ifTrue: [ super generateMethods ]
		ifFalse: [ 
			self sourceString: (self buildMethod: paramNumber).
			self generateMethod.
			self generateMethods: paramNumber - 1 ]