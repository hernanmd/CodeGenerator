private - sections
addSectionsNamed: aCollection
	" Private - Collect templates found in aCollection of template names, and join all its contents to the new source "
	
	| templateRefs |
	
	templateRefs := self templateManager collectTemplates: aCollection.
	self sourceString: ((self collectTemplateContents: templateRefs) joinUsing: String cr).
