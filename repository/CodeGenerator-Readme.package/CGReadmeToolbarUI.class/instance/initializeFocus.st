initialization
initializeFocus
	" Private - Initialize focus order for the receiver "

	self focusOrder 
		add: self clearButton;
		add: self settingsButton;
		add: self copyButton;
		add: self generateButton;
		add: self previewButton;
		add: self saveButton;
		add: self closeButton.