accessing
fetchLicenseJSON

	| httpClient response |

	httpClient := ZnClient new
		https;
		signalProgress: true;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		url: 'https://spdx.org/licenses/licenses.json';
		contentReader: self neoJsonReaderBlock.
	^ [ 
		[ :bar |
		  bar title: 'Downloading Licenses...'.
 		[ response := httpClient get ] 
		on: HTTPProgress 
		do: [ : progress |
			progress isEmpty ifFalse: [ bar current: progress percentage ].
			progress resume ] ] asJob run
		] 
		on: ZnHttpUnsuccessful
		do: [ : exception | 
			self informMessage: exception messageText.
			Transcript crShow: exception ]