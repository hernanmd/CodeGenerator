code-meta
collectClassMethodsAt: categoryName
	" Answer a <Collection> of receiver's class side methods at categoryName, including all superclasses "

	^ self class withAllSuperclasses flatCollect: [ : e | 
		e class organization listAtCategoryNamed: categoryName ]