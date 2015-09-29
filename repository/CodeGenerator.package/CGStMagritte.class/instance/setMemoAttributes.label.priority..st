code-configuration-string
setMemoAttributes: aString label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForMemoDescription.
	self generateMethod.	