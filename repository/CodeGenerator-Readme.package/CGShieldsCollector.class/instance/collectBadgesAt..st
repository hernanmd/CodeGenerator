accessing
collectBadgesAt: categoryName
	" Collects <CGShieldsBadge> for categoryName into the receiver "

	| tmpBadges |
	
	tmpBadges := OrderedCollection new: 50.
	(self selectBadgeExamplesAt: categoryName)
		do: [ : t | self collectBadgesFromTable: t into: tmpBadges ]
		displayingProgress: 'Please wait while retrieving shield badges...'.
	^ tmpBadges 
