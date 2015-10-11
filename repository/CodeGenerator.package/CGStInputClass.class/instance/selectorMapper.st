accessing
selectorMapper
	^ selectorMapper
		ifNil: [ selectorMapper := CGSmalltalkSelectorMapper new ]