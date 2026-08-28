code-cleaning
removeClassCategory
	" Remove receiver's classCategoryName "

	^ self targetClass removeProtocolNamed: self classCategoryName