accessing
generateMethods: paramNumber
	" Private - Generate target methods from receiver's selectors "
	
	self parameterCount = 1
		ifTrue: [ ^ super generateMethods ]
		ifFalse: [ 
			self sourceString: (self generateMethod: paramNumber).
			self generateMethod.
			self generateMethods: paramNumber - 1 ]