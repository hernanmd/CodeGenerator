accessing
fetchLicenseJSON
	^ [ [ :bar | 
	bar title: 'Downloading Licenses...'.
	[ self httpRequest get ]
		on: HTTPProgress
		do: [ :progress | 
			progress ifNotEmpty: [ bar current: progress percentage ].
			progress resume ] ] asJob run ]
		on: ZnHttpUnsuccessful
		do: [ :exception | 
			self informMessage: exception messageText.
			Transcript crShow: exception ]