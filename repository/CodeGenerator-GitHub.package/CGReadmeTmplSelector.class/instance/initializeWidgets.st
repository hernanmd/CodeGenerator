accessing
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		templateList 		SpcLabeledListSelectorTextArea
		toolbar 				SpcTwoButtonToolbar).
	self initializeTemplateList.
	self initializeTemplatePreview.
"	self initializeToolbar.
	self initializeFocus"