accessing
templatesDiskSizeInKb
	" Answer a <String> of how many templates the receiver contains "
	
	^ self templatesSizeCount asFileSize
