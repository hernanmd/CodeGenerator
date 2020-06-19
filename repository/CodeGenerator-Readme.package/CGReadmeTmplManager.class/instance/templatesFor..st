accessing
templatesFor: aString 
	" Answer a <Collection> of <FileReference> template files in the receiver, matching aString "

	^ self templatesAtSectionLocation: (self sectionLocationFor: aString)
		
