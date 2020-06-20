initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self
		instantiateModels: #(
			#templatesSelector 		#SpcLabeledTextFieldWithBrowseButton 
			#repositoryName 			#SpcLabeledTextField 
			#userName 					#SpcLabeledTextField 
			#sectionSelector 			#SpcMultipleCheckListModel 
			#licenseSelector 			#SpcLabeledTextFieldSelector 
			#clearButton 				#SpcOneButtonToolbar 
			#mdTextArea 					#SpcLabeledTextArea 
			#syntaxSelector 			#SpcLabeledDropList
			#languageCheatsheet 		#SpcLabeledTextArea
			#toolbar 						#SpcThreeButtonToolbar 
			generateSectionsButton 	SpcTwoButtonToolbar).
	self initializeTemplatesSelector.
	self initializeLicenseSelector.
	self sectionSelector setItems: CGReadmeTmplManager sections.
	self initializeLabels.
	self initializeSyntaxSelector.
	self initializeButtons.
	self initializeFocus