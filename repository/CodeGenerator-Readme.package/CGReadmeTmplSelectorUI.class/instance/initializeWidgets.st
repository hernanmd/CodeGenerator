initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		templateList 		SpcLabeledDropSelectorTextArea
		toolbar 				SpcTwoButtonToolbar).
	self initializeTemplateList.
	self initializeToolbar.
	"self initializeFocus"