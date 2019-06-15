initialization
initializeButtons

	self clearButton
		firstButtonLabel: 'Clear';
		firstButtonAction: [ self clearAll ].
	self toolbar 
		firstButtonLabel: 'Close';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Write';
		secondButtonAction: [ self generateReadme ];
		thirdButtonLabel: 'Copy';
		thirdButtonAction: [ self copyReadme ].