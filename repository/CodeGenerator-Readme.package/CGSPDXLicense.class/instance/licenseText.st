accessing
licenseText

	^ licenseText
		ifNil: [ licenseText := self licenseDetails at: 'licenseText' ]