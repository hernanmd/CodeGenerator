initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badges 					SpcLabeledTextFieldSelector	
		repositoryName			SpcLabeledTextField
		userName 					SpcLabeledTextField
		sectionSelector 		SpcDoubleSelectorTextArea
		buttonBar 				SpcTwoButtonToolbar
	).
	self initializeBadgesSelector.
	self initializeSections.
	self initializeSectionSelector.

	self repositoryName
		ghostText: 'Please enter the repository name on GitHub';
		label: 'Repository'.
	self userName 
		ghostText: 'Please enter your user name on GitHub';
		label: 'Username'.
	self buttonBar 
		firstButtonLabel: 'Cancel';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Generate';
		secondButtonAction: [ self generateReadme ].
	self initializeFocus.