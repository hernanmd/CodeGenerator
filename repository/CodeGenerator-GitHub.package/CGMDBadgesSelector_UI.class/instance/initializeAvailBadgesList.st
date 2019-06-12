initialization
initializeAvailBadgesList

	self badgesList
		label: 'Available Badges';
		layoutSpecSelector: #buttonsOnTopSpec;
		items: self badgesItems;
		addButtonHelpText: 'Add selected badge code';
		addActionBlock: [ (self requestMessage: 'Enter a new badge')
				ifNotNil: [ :response | response ] ]
"		displayBlock: [ : item | self halt. ]"