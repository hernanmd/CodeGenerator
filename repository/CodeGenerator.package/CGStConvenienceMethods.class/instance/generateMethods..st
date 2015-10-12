accessing
generateMethods: paramNumber
	" Private - Generate target methods from receiver's selectors "
	
	paramNumber = 1
		ifTrue: [ ^ super generateMethods ]
		ifFalse: [ 
			self sourceString: (self buildMethod: paramNumber).
			self generateMethod.
			self generateMethods: paramNumber - 1 ]