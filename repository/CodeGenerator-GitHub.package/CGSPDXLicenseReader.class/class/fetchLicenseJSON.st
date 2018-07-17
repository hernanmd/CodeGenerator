accessing
fetchLicenseJSON

	| httpClient response |

	httpClient := ZnClient new
		https;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		url: 'https://spdx.org/licenses/licenses.json';
		contentReader: self neoJsonReaderBlock.
	^ [ response := httpClient get ] 
		on: ZnHttpUnsuccessful
		do: [ : exception | Transcript crShow: exception ]