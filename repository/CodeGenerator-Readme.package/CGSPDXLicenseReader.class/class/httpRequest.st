accessing
httpRequest

	^ ZnClient new
		https;
		signalProgress: true;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		url: 'https://spdx.org/licenses/licenses.json';
		contentReader: self neoJsonReaderBlock.