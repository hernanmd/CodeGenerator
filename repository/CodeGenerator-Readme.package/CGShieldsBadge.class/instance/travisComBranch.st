accessing - build
travisComBranch

	^ 'travis/com/{1}/{2}/{3}.{4}' format: { 
		self user .
		self repository .
		self branch .
		self imgFormat }