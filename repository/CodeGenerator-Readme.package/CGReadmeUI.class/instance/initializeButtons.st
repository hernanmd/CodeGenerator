initialization
initializeButtons

	self toolbar 
		firstButtonLabel: 'Close';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Save...';
		secondButtonAction: [ self generateReadme ];
		thirdButtonLabel: 'Copy';
		thirdButtonAction: [ self copyReadme ].
	self generateSectionsButton 
		firstButtonLabel: 'Clear';
		firstButtonAction: [ self clearAll ];
		secondButtonLabel: 'Settings...';
		secondButtonAction: [ self openSettingsWindow ];
		thirdButtonLabel: 'Generate';
		thirdButtonAction: [ self generateSections ]