code-configuration-memo
setMemoAttributes: aString default: defaultValue label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		default: defaultValue
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForMemoDefaultDescription.
	self generateMethod.	