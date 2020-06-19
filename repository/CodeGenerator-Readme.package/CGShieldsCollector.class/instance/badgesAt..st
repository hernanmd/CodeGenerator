accessing
badgesAt: aString 

	^ self badges
		at: aString
		ifAbsentPut: [ self collectBadgesAt: aString asLowercase ]