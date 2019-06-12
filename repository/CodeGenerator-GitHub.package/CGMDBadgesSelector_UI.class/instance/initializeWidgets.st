initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badgesList 			SpcEditableList 
		badgeTypes 			SpcLabeledList
		badgesSelection 	SpcLabeledList			
		badgesTextArea 		SpcLabeledTextArea 
		toolbar 				SpcTwoButtonToolbar).
	self initializeBadgesTypes.
	self initializeAvailBadgesList.
	self initializeSelectedBadgesList.
	self initializeToolbar.
	self initializeFocus