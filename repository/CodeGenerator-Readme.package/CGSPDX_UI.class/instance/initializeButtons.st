initialization
initializeButtons
	" self initializeFocus."

	self toolbar 
		firstButtonLabel: 'Help';
		firstButtonAction: [ self openHelp ];
		secondButtonLabel: 'Close';
		secondButtonAction: [ self delete ]