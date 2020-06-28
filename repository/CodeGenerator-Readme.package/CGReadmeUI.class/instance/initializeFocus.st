initialization
initializeFocus
	" Private - See superimplementor's comment "

	self focusOrder
		add: self repositoryName;
		add: self userName;
		add: self templatesSelector;
		add: self licenseSelector;
		"add: self syntaxSelector;"
		add: self sectionSelector;
		add: self textArea