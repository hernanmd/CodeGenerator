accessing
collectAllBadges
	" Answer a <Collection> of all available <CGShieldsBadge> "

	^ self collectBadgesAt: (self badgeCategories collect: #asLowercase)
