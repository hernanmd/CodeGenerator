initialization
initializeToolbar
	self toolbar
		firstButtonLabel: 'Cancel';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Close';
		secondButtonAction: [ self halt ]