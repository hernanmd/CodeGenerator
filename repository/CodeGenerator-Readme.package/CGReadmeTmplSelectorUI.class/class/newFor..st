instance creation
newFor: aString

	^ self basicNew 
		template: aString;
		initialize;
		openWithSpec