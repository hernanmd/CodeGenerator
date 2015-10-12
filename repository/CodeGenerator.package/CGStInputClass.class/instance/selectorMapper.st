accessing
selectorMapper
	^ selectorMapper
		ifNil: [ selectorMapper := CGStSelectorMapper new ]