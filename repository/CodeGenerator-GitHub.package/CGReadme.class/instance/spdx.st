accessing
spdx

	^ spdx
		ifNil: [ spdx := CGSPDXLicenseReader fetchLicenseJSON ]