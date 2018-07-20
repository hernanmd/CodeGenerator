accessing
neoJsonMapping: mapper

	mapper 
		for: self 
		do: [ : mapping |
			mapping mapInstVars: #(reference isDeprecatedLicenseId detailsUrl referenceNumber name licenseId seeAlso isOsiApproved ).
			mapping mapInstVar: #name to: #licenseName ]