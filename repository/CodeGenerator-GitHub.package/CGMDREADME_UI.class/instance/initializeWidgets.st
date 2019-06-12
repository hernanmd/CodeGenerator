initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self
		instantiateModels: #(#badgesSelector #SpcLabeledTextFieldSelector #repositoryName #SpcLabeledTextField #userName #SpcLabeledTextField #sectionSelector #SpcMultipleCheckListModel #licenseSelector #SpcLabeledTextFieldSelector #clearTemplateButton #SpcOneButtonToolbar #mdTextArea #SpcLabeledTextArea #languageSelector #SpcLabeledDropList #toolbar #SpcThreeButtonToolbar).
	self initializeBadgesSelector.
	self initializeLicenseSelector.
	self sectionSelector setItems: CGGitHubREADME sections.
	self initializeLabels.
	self languageSelector
		setItems: CGGitHubREADME languagesList;
		label: 'Language'.
	self initializeButtons.
	self initializeFocus