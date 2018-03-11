testing
hasInstallationText
	" Answer <true> if the receiver has an installation text "
	
	^ installationText notNil and: [ installationText notEmpty ]
