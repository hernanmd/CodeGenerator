instance creation
new

	^ self basicNew 
		badges: self availableBadges;
		initialize;
		yourself