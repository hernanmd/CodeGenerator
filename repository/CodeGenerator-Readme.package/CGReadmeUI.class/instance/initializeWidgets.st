initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self
		instantiateModels: #(
			#templatesSelector 		#SpcLabeledTextFieldWithBrowseButton 
			#repositoryNameField 		#SpcLabeledTextField 
			#userNameField				#SpcLabeledTextField 
			#sectionSelector 			#SpcMultipleCheckListModel 
			#licenseSelector 			#SpcLabeledTextFieldSelector 
			#textArea 					#SpcLabeledTextArea 
			#syntaxSelector 			#SpcLabeledDropList
			#syntaxCheatsheet 			#SpcLabeledTextArea
			#toolbar 						#CGReadmeToolbarUI).
	self initializeTemplatesSelector.
	self initializeLicenseSelector.
	self initializeSectionSelector.
	self initializeLabels.
	self initializeSyntaxSelector.
	self initializeTextArea.
	self initializeFocus