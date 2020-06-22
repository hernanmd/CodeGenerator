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
			#syntaxCheatsheet 			#SpcLabeledTextArea
			#toolbar 						#SpcThreeButtonToolbar 
			#generateSectionsButton 	#SpcTwoButtonToolbar).
	self initializeTemplatesSelector.
	self initializeLicenseSelector.
	self initializeSectionSelector.
	self initializeLabels.
	self initializeSyntaxSelector.
	self initializeTextArea.
	self initializeButtons.
	self initializeFocus