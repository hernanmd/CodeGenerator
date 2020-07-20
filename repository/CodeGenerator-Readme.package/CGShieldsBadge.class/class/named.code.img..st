instance creation
named: nameString code: codeString img: aFormOrNil
	" Answer a new instance receiver with nameString as name and imgStringOrNil as the representative image "

	^ self new
		badgeName: nameString;
		badgeCode: codeString;
		badgeImg: aFormOrNil;
		yourself