code-configuration-date
setDateAndTimeAttributes: aString default: aDefaultDateAndTime label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		default: aDefaultDateAndTime asString surroundedBySingleQuotes , ' asDateAndTime'
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForDateAndTimeDefaultDescription.
	self generateMethod