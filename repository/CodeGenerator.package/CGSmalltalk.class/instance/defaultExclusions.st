defaults
defaultExclusions
	" Answer a <Collection> with methods excluded from testing "

	^ Set 
		with: #initialize 
		with: #printOn:
		with: #storeOn: