accessing
initializeTemplateList

	self halt.
	"self templateList selectionList items: (self owner templatesFor: self template)."
	self templateList 
		dataModel: self owner;
		listSelector: #templatesFor:;
		detailTextAreaSelector: #contents;
		selectionListItems: ((self owner templatesFor: self template) collect: #basename).