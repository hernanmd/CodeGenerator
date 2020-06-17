initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self
		instantiateModels: #(
			#templatesSelector 			#SpcLabeledTextFieldSelector 
			#repositoryName 			#SpcLabeledTextField 
			#userName 					#SpcLabeledTextField 
			#sectionSelector 			#SpcMultipleCheckListModel 
			#licenseSelector 			#SpcLabeledTextFieldSelector 
			#clearButton 				#SpcOneButtonToolbar 
			#mdTextArea 					#SpcLabeledTextArea 
			#languageSelector 			#SpcLabeledDropList 
			#toolbar 						#SpcThreeButtonToolbar 
			generateSectionsButton 	SpcTwoButtonToolbar).
	self initializeTemplatesSelector.
	self initializeLicenseSelector.
	self sectionSelector setItems: CGGitHubREADME sections.
	self initializeLabels.
	self languageSelector
		setItems: CGGitHubREADME languagesList;
		label: 'Language'.
	self initializeButtons.
	self initializeFocus