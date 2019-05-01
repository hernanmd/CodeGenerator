initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(
		badgesSelector 			SpcLabeledTextFieldSelector	
		repositoryName			SpcLabeledTextField
		userName 					SpcLabeledTextField
		sectionSelector 		SpcMultipleCheckListModel
		licenseSelector 		SpcLabeledTextFieldSelector
		clearTemplateButton 	SpcOneButtonToolbar
		mdTextArea 				SpcLabeledTextArea
		languageSelector 		SpcLabeledDropList
		toolbar 					SpcThreeButtonToolbar
	).
	self initializeBadgesSelector.
	self initializeLicenseSelector.
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
	self initializeButtons.
	self initializeFocus.