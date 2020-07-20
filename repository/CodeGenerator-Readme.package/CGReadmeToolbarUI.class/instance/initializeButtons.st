initialization
initializeButtons

	self closeButton  
		label: 'Close';
		action: [ self delete ].
	self saveButton 
		label: 'Save...';
		action: [ self generateReadme ].
	self copyButton
		label: 'Badges';
		action: [ self openBadgesWindow ].
	self clearButton 
		label: 'Clear';
		action: [ self clearAll ].
	self settingsButton 
		label: 'Settings...';
		action: [ self openSettingsWindow ].
	self generateButton
		label: 'Generate';
		action: [ self generateSections ].
	self previewButton
		label: 'Preview...';
		action: [ self previewREADME ].
