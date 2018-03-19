initialization
initializeSectionSelector

	| dataModel |
	
	dataModel := Dictionary new
		at: 'Text Sections' put: self ghTextSections;
		at: 'List Sections' put: self ghListSections;
		at: 'Screenshot Section' put: self ghListSections;
		yourself.

	self sectionSelector
		label: 'Section';
		secondLabelText: 'Template';
		title: 'Double Selector TextArea Example';
		dataModel: dataModel;
		selector: #at:;
		detailListSelector: #keys;
		detailSelector: #at:;
		selectionListItems: dataModel keys