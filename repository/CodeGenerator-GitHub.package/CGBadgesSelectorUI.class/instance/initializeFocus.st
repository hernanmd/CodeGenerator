initialization
initializeFocus
	" Private - See superimplementor's comment "

	self focusOrder
		add: self badgeTypes;
		add: self badgesList;
		add: self badgesTextArea;
		add: self toolbar. 