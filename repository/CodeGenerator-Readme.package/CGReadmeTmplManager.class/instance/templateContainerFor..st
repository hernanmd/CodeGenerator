accessing
templateContainerFor: aString 
	" Answer a <Collection> of <FileReference> template files in the receiver, matching aString "

	^ CGReadmeTemplateContainer at: self templatesDir named: aString
		
