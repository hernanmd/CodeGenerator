initialization
initializeFocus
	" Private - See superimplementor's comment "

	self focusOrder
		add: self repositoryNameField;
		add: self userNameField;
		add: self templatesSelector;
		add: self licenseSelector;
		"add: self syntaxSelector;"
		add: self sectionSelector;
		add: self textArea