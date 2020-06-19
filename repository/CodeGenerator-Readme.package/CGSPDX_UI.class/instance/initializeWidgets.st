initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self
		instantiateModels:
			#(licenseList SpcLabeledDropList isOsiApproved SpcLabeledTextField isDeprecated SpcLabeledTextField licenseId SpcLabeledTextField licenseUrl SpcLabeledTextField licenseComments SpcLabeledTextArea licenseText SpcLabeledTextArea toolbar SpcTwoButtonToolbar).
	self initializeLicenseList.
	self isOsiApproved label: 'OSI Approved'.
	self isDeprecated label: 'Deprecated'.
	self licenseId label: 'Id'.
	self licenseUrl label: 'URL'.
	self licenseText label: 'License'.
	self licenseComments label: 'Comments'.
	self initializeButtons
	" self initializeFocus."