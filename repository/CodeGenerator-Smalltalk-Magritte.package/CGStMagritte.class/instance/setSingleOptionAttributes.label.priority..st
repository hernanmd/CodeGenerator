code-configuration-lists
setSingleOptionAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForSingleOptionDescription.
	self generateMethod.	