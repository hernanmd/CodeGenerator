accessing - url
customBaseURL
	" Answer a <String> with the receiver's base url "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: self baseUrl;
			nextPutAll: self customBaseURLPath ]