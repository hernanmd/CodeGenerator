accessing
licenseComments
	^ licenseComments
		ifNil: [ licenseComments := self licenseDetails at: 'licenseComments'  ifAbsent: [ String empty ] ]