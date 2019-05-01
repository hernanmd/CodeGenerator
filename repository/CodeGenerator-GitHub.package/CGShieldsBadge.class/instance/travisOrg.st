accessing - build
travisOrg

	^ 'travis/{1}/{2}.{3}' format: { 
		self user .
		self repository .
		self imgFormat }