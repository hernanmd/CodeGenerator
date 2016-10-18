code-configuration-memo
setMemoAttributes: aString label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForMemoDescription.
	self generateMethod.	