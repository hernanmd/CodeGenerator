initialization
initializeToolbar

	self toolbar 
		firstButtonLabel: 'Select';
		firstButtonAction: [ self select ];
		secondButtonLabel: 'Close';
		secondButtonAction: [ self delete ]