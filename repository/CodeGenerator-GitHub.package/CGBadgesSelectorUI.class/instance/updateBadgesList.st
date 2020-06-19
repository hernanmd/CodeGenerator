callbacks
updateBadgesList

	self badgesList 
		roots: (self badgeCollector badgesAt: self selectedBadgeType);
		displayBlock: [ : badge | badge badgeName ];
		iconBlock: [ : badge | badge badgeImg asMorph  ]