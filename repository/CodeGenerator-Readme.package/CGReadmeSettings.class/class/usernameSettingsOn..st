settings
usernameSettingsOn: aBuilder
	<cgReadmeSettings>

	(aBuilder setting: #username)
		target: self;
		description: 'Set repository user name';
		label: 'User name';
		default: String empty;
		order: 1;
		parent: #cgReadmeMainSettings