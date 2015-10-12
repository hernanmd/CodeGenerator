code-meta
collectClassMethodsAt: categoryName
	" Answer a <Collection> of receiver's class side methods at categoryName "

	^ self class class organization listAtCategoryNamed: categoryName
