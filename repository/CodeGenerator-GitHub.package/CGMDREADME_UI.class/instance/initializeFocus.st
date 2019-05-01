initialization
initializeFocus
	" Private - See superimplementor's comment "

	self focusOrder
		add: self repositoryName;
		add: self userName;
		add: self badgesSelector. 