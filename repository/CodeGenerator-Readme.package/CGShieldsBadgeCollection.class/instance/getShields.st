initialization
getShields
	" Connect to the remote repository, download and serialize the available badges  "

	FLSerializer 
		serialize: CGShieldsCollector new collectAllBadges
		toFileNamed: self shieldsFilename