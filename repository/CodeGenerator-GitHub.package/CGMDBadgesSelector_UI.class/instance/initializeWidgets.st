initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badgesList 			SpcEditableList 
		badgeTypes 			SpcLabeledList
		badgesTextArea 		SpcLabeledTextArea 
		toolbar 				SpcTwoButtonToolbar).
	self initializeBadgesTypes.
	self initializeBadgesList.
	self initializeToolbar.
	self initializeFocus