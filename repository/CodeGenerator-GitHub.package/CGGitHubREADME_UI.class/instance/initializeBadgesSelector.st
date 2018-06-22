initialization
initializeBadgesSelector

	self badges
		buttonLabel: 'Select';
		label: 'Badges';
		items: self badgesList;
		ownerAction: [ : selections | selections notNil and: [ self badges text: (selections joinUsing: ', ') ] ];
		textFieldDelimiter: $;;
		ghostText: 'Please select badges'.