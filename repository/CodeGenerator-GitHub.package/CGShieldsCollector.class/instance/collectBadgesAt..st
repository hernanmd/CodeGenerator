accessing
collectBadgesAt: categoryName
	" Collects <CGShieldsBadge> for categoryName into the receiver "

	| tmpBadges |
	
	tmpBadges := OrderedCollection new.
	(((Soup fromUrl: self shieldsUrl , categoryName) findAllTags: 'table') 
		select: [ :t | (t hasAttribute: 'class') and: [ t @ 'class' beginsWith: 'badge-examples' ] ])
		do: [ : t |
			t childTagsDo: [ : tBody |
				tBody childTagsDo: [ : tr | 
					tmpBadges add: (self
						newBadgeNamed: tr children first next text
						code: tr children third next text
						img: (tr children second next next attributeAt: 'src')) ] ] ]
		displayingProgress: 'Retrieving shield badges...'.
		^ tmpBadges 
