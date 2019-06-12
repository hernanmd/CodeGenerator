initialization
initializeToolbar
	self toolbar
		firstButtonLabel: 'Close';
		firstButtonAction: [ self delete ];
		secondButtonLabel: 'Add';
		secondButtonAction: [ self owner addBadge: self selectedBadgeItem ]