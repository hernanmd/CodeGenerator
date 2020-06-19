initialization
initializeButtons

	self clearButton
		firstButtonLabel: 'Clear';
		firstButtonAction: [ self clearAll ].
	self toolbar 
		firstButtonLabel: 'Close';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Save';
		secondButtonAction: [ self generateReadme ];
		thirdButtonLabel: 'Copy';
		thirdButtonAction: [ self copyReadme ].
	self generateSectionsButton 
		firstButtonLabel: 'Generate';
		firstButtonAction: [ self generateSections ];
		secondButtonLabel: 'Badges';
		secondButtonAction: [ (CGBadgesSelectorUI newWithOwner: self) openWithSpec ]