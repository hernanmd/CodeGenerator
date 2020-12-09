accessing
collectAllBadges
	" Answer a <Collection> of all available <CGShieldsBadge> "

	| badgesDict |
	
	badgesDict := Dictionary new.
	self badgeCategories do: [ : badgeCat |
			badgesDict 
				at: badgeCat 
				put: (self collectBadgesAt: badgeCat asLowercase) ].
	^ badgesDict