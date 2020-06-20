instance creation
at: aFileReference named: aString

	^ self new
		initializeWithName: aString location: aFileReference;
		yourself