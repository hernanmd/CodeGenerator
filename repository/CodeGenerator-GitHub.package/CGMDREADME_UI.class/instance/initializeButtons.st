initialization
initializeButtons

	self clearTemplateButton
		firstButtonLabel: 'Clear';
		firstButtonAction: [ self sectionSelector clearTextArea ].
	self toolbar 
		firstButtonLabel: 'Close';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Generate';
		secondButtonAction: [ self generateReadme ];
		thirdButtonLabel: 'Copy';
		thirdButtonAction: [ self copyReadme ].