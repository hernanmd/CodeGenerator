accessing
badgeCollector
	
	^ badgesCollector
		ifNil: [ badgesCollector := CGShieldsCollector new ]