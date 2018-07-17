accessing
licenseDetails
	" Answer a <String> in JSON format with receiver's detail information "

	^ licenseDetails 
		ifNil: [ licenseDetails := NeoJSONReader fromString: self getDetails ]