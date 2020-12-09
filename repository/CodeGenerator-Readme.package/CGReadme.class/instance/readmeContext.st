accessing
readmeContext

	^ Dictionary new
		at: 'repositoryName' 	put: self repositoryName;
		at: 'username' 			put: self username;
		yourself.
