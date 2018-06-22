code-configuration-file
setFileAttributes: aString label: labelString priority: anInteger

	self 
		attributeName: aString capitalized;
		attributeAccessor: aString surroundedBySingleQuotes asSymbol;
		attributeLabel: labelString surroundedBySingleQuotes;
		attributePriority: anInteger;
		attributeGroup: ''.
	self sourceString: self templateForFileDescription.
	self generateMethod.