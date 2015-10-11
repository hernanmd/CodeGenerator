accessing
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	self parameterCount = 0
		ifTrue: [ ^ super generateMethods ]
		ifFalse: [ 
			self sourceString: self appendParameters.
			self generateMethod ]