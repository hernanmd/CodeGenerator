accessing
getDetails

	| httpClient |
	httpClient := ZnClient new
		https;
		enforceHttpSuccess: true;
		accept: ZnMimeType applicationJson;
		url: self detailsUrl.
	^ [ httpClient get ] 
		on: ZnHttpUnsuccessful
		do: [ : exception | 
			self informMessage: exception messageText.			
			Transcript crShow: exception ]  