instance creation
named: nameString img: aFormOrNil
	" Answer a new instance receiver with nameString as name and imgStringOrNil as the representative image "

	^ self new
		badgeName: nameString;
		badgeImg: aFormOrNil;
		yourself