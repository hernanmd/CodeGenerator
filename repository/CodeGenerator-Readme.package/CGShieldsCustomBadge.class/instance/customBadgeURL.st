accessing - url
customBadgeURL
	" Answer a <String> with the receiver's url "

	^ String streamContents: [ : stream | 
		stream
			nextPutAll: self customBaseURL;
			nextPutAll: self customBadgeURLSegment ]