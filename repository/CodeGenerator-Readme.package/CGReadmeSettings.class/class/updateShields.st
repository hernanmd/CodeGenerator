settings
updateShields
	" Connect to the remote repository and download the available badges  "

	CGShieldsBadgeCollection getShields 
		ifTrue: [ self informMessage: 'Shields could not be updated' ]
	
