initialization
initializeBadges 
	" Private - Set the receiver's badges. If there are any serialization of badges, read it first "

	self hasShields 
		ifFalse: [ self getShields ].
	self badges: self readShields.