settings
updateShields
	" Connect to the remote repository and download the available badges  "

	FLSerializer 
		serialize: (CGShieldsCollector new collectAllBadges)
		toFileNamed: self badgesFilename
	
