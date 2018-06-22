accessing
targetClassCategory

	^ targetClassCategory
		ifNil: [ targetClassCategory := self defaultTargetClassCategory ]