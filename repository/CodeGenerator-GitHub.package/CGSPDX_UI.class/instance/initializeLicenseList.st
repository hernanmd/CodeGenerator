initialization
initializeLicenseList

	self licenseList
		setItems: self owner licenses;
		displayBlock: [ :l | l licenseName ];
		whenSelectedItemChanged: [ : selection | self updateWithLicense: selection ];
		label: 'Name'