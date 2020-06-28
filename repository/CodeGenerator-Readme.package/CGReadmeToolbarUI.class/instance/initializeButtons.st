initialization
initializeButtons

	self closeButton  
		label: 'Close';
		action: [ self delete ].
	self badgesButton
		label: 'Badges...';
		action: [ self openBadgesWindow ].
	self saveButton 
		label: 'Save...';
		action: [ self generateReadme ].
	self copyButton
		label: 'Copy';
		action: [ self copyReadme ].
	self clearButton 
		label: 'Clear';
		action: [ self clearAll ].
	self settingsButton 
		label: 'Settings...';
		action: [ self openSettingsWindow ].
	self generateButton
		label: 'Generate';
		action: [ self generateSections ].
