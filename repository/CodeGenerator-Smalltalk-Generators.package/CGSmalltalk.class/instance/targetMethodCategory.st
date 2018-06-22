accessing
targetMethodCategory
	" Answer a String with the category name where compile the generated code "

	^ targetMethodCategory
		ifNil: [ targetMethodCategory := self defaultTargetMethodCategory ]