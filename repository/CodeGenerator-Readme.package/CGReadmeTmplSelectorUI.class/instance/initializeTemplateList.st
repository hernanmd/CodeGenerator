initialization
initializeTemplateList

	"self templateList selectionList items: (self owner templatesFor: self template)."
	self templateList 
		dataModel: self owner;
		listSelector: #templateContentsAt:;
		detailTextAreaSelector: #printString;
		selectionListItems: self owner location childNames.