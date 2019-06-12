initialization
initializeBadgesSelector

	self badgesSelector
		buttonLabel: 'Select';
		label: 'Badges';
		itemsSelector: (CGMDBadgesSelector_UI newWithBasicOwner: self);
		ownerAction: [ : selections | selections notNil and: [ selections isCollection and: [ self badgesSelector text: (selections joinUsing: ', ') ] ] ];
		textFieldDelimiter: $;;
		ghostText: 'Please select badges'.