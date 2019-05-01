accessing - build
travisCom

	^ 'travis/com/{1}/{2}.{3}' format: { 
		self user .
		self repository .
		self imgFormat }