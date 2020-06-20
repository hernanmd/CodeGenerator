initialization
initializeWithName: aString location: aFileReference
	" Private - Initialize the receiver's location "

	self location: (aFileReference / (self asTemplateSectionName: aString)).

	
	 