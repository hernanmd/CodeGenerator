accessing
neoJsonMapping: mapper

	mapper 
		for: self 
		do: [ : mapping |
			mapping mapInstVars: #(reference isDeprecatedLicenseId detailsUrl referenceNumber licenseId isOsiApproved name).
			mapping mapInstVar: #name to: #licenseName ]