accessing
collectBadgesAt: categoryName
	" Answer a <Collection> of <CGShieldsBadge> for categoryName "

	| tmpBadges |

	tmpBadges := OrderedCollection new: 50.
	(self selectBadgeExamplesAt: categoryName)
		do: [ : t | self collectBadgesFromTable: t into: tmpBadges ]
		displayingProgress: 'Please wait while retrieving shield badges...'.
	^ tmpBadges 
