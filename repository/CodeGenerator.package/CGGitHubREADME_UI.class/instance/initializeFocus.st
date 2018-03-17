initialization
initializeFocus
	" Private - See superimplementor's comment "

	self focusOrder
		add: self repositoryName;
	add: self descriptionText;
	add: self installationText;
	add: self stInstExpr;
	add: self devInstExpr;
	add: self usageNotes;
	add: self usageText;
	add: self badges. 