settings
updateSettingsOn: aBuilder
	<cgReadmeSettings>

	(aBuilder launcher: #updateShields)
		target: self;
		script: #updateShields;
		description: 'Update Shields from repository if connected to Internet';
		label: 'Update Shields' translated;
		parent: #cgReadmeMainSettings