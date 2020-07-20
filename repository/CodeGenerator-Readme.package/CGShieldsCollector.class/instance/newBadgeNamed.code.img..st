accessing
newBadgeNamed: nameString code: codeString img: imgURLString
	" Add a new shields badge identified by nameString with image located at imgURLString "

	^ CGShieldsBadge 
		named: nameString 
		code: codeString
		img: (self badgeImageAt: imgURLString)