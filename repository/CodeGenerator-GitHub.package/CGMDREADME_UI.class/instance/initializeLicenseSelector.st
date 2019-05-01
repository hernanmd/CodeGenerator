initialization
initializeLicenseSelector

	self licenseSelector
		buttonLabel: 'Select';
		label: 'License';
		itemsSelector: (CGSPDX_UI newWithBasicOwner: self);
		ownerAction: [ : selection | "selection notNil and: [ self licenseSelector text: selection ]" ];
		textFieldDelimiter: $;;
		ghostText: 'Please select a license'.