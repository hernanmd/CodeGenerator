callbacks
openBadgesWindow
	" Open the badges selection window "

	CGBadgesSelectorUI basicNew 
		owner: self owner;
		initialize;
		openWithSpec.
