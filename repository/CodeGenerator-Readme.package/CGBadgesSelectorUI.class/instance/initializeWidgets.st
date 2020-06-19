initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badgesList 			SpcMultipleCheckListModel 
		badgeTypes 			SpcLabeledList
		badgesTextArea 		SpcLabeledTextArea 
		toolbar 				SpcTwoButtonToolbar).
	self initializeBadgesTypes.
	self initializeAvailBadgesList.
	self initializeToolbar.
	self initializeFocus