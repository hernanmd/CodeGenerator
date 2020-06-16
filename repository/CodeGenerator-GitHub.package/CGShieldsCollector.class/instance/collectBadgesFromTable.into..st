accessing
collectBadgesFromTable: t into: tmpBadges

	t childTagsDo: [ : tBody |
		tBody childTagsDo: [ : tr | 
			| rowElems |
			rowElems := tr children.
			tmpBadges add: (self
				newBadgeNamed: rowElems first next text
				code: rowElems third next text
				img: (rowElems second next next attributeAt: 'src')) ] ]