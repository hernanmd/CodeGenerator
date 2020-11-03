settings
badgesFilenameSettingsOn: aBuilder
	<cgReadmeSettings>

	(aBuilder setting: #badgesFilename)
		target: self;
		description: 'Set badges repository file name';
		label: 'Badges file';
		default: String empty;
		order: 3;
		parent: #cgReadmeMainSettings