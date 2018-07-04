initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badgesSelector 			SpcLabeledTextFieldSelector	
		repositoryName			SpcLabeledTextField
		userName 					SpcLabeledTextField
		sectionSelector 		SpcMultipleCheckListModel
		clearTemplateButton 	SpcOneButtonToolbar
		buttonBar 				SpcTwoButtonToolbar
		mdTextArea 				SpcLabeledTextArea
		languageSelector 		SpcLabeledDropList
	).
	self initializeBadgesSelector.
	self sectionSelector setItems: CGGitHubREADME sections.

	self repositoryName
		ghostText: 'Please enter the repository name on GitHub';
		label: 'Repository'.
	self userName 
		ghostText: 'Please enter your user name on GitHub';
		label: 'Username'.
	self mdTextArea 
		label: 'README.md'.
	self languageSelector 
		setItems: CGGitHubREADME languagesList;
		label: 'Language'.
	self clearTemplateButton
		firstButtonLabel: 'Clear';
		firstButtonAction: [ self sectionSelector clearTextArea ].
	self buttonBar 
		firstButtonLabel: 'Cancel';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Generate';
		secondButtonAction: [ self generateReadme ].
	self initializeFocus.