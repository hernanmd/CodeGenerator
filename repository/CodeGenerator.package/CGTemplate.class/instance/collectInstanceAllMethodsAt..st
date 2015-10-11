code-meta
collectInstanceAllMethodsAt: categoryName
	" Answer a <Collection> of receiver's instance side methods at categoryName "

	^ self class withAllSuperclasses flatCollect: [ : e | 
		e organization listAtCategoryNamed: categoryName ]
