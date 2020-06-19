accessing
neoJsonReaderBlock

	^ [ : entity | 

		[	|reader|
			reader := (NeoJSONReader on: entity readStream).
			reader for: CGSPDXObject do: 
			[ : m | 
				m mapInstVars: #(licenseListVersion releaseDate).
				(m mapInstVar: #licenses) valueSchema: CGSPDXLicenseList.
			].
			reader for: CGSPDXLicenseList customDo: [ : mapping | mapping listOfElementSchema: CGSPDXLicense ].
			reader nextAs: CGSPDXObject
		] 
		on: NeoJSONParseError 
		do: [ : err |
			self informMessage: 'Parse error while reading JSON data...'.
			(NeoJSONReader fromString: entity contents) inspect ]
 		]