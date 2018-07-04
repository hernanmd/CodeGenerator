initialization
initializeBadgesSelector

	self badgesSelector
		buttonLabel: 'Select';
		label: 'Badges';
		items: self badgesList;
		ownerAction: [ : selections | selections notNil and: [ self badgesSelector text: (selections joinUsing: ', ') ] ];
		textFieldDelimiter: $;;
		ghostText: 'Please select badges'.