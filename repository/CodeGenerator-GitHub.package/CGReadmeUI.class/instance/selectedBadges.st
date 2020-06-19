accessing
selectedBadges
	^ selectedBadges
		ifNil: [ selectedBadges := Set new ]