callbacks
updateWithLicense: aCGSPDXLicense
	self isOsiApproved text: aCGSPDXLicense isOsiApproved asString.
	self isDeprecated text: aCGSPDXLicense isDeprecatedLicenseId asString.
	self licenseId text: aCGSPDXLicense licenseId.
	(aCGSPDXLicense seeAlso isNotNil
		and: [ aCGSPDXLicense seeAlso isNotEmpty ])
		ifTrue: [ self licenseUrl text: aCGSPDXLicense seeAlso first ]
		ifFalse: [ self licenseUrl text: String empty ].
	self licenseText text: aCGSPDXLicense licenseText.
	self licenseComments text: aCGSPDXLicense licenseComments.
	self owner selectedLicense: aCGSPDXLicense licenseId