private - sections
addSectionsNamed: aCollection
	" Private - Iterate section named aString "
	
	| templateRefs |
	templateRefs := self templateManager collectTemplates: aCollection.
	self sourceString: ((self collectTemplateContents: templateRefs) joinUsing: String cr).
