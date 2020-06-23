accessing
validPostfixWidgets
	" Answer a <Collection> with instance variable prefix names valid for automatic building of #initializeWidget mappings "

	^ (AbstractWidgetModel allSubclasses
		select: [ :c | c spcId isNotEmpty ]
		thenCollect: #spcId) asSortedCollection